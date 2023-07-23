require 'jwt'

module Api
  module V1
    class UsersController < ApplicationController
      def create
        user = User.new(user_params)

        if user.save
          render json: { message: 'User created successfully' }, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def login
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
          # Generate a token (e.g., using JWT) and return it to the client for authentication
          token = generate_token(user)
          render json: { token: token, username: user.username, accountType: user.account }
        else
          render json: { error: 'Invalid email or password' }, status: :unauthorized
        end
      end

      private

      def user_params
        params.require(:user).permit(:username, :email, :password, :account)
      end

      def generate_token(user)
        # Implement your token generation logic here (e.g., using JWT)
        # Return the generated token

        # Define your secret key for signing the token
        secret_key = Rails.application.secrets.secret_key_base

        # Define the expiration time for the token (e.g., 1 hour from now)
        expiration_time = 1.hour.from_now.to_i

        # Build the payload containing user information
        payload = { user_id: user.id, exp: expiration_time }

        # Generate the token using JWT
        token = JWT.encode(payload, secret_key, 'HS256')

        token
      end
    end
  end
end
