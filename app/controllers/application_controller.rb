class ApplicationController < ActionController::API
  # before_action :authenticate_request

  def authenticate_request
    # Get the token from the request headers
    token = request.headers['Authorization']

    # Check if the token is present
    unless token.present?
      render json: { error: 'Authorization header missing' }, status: :unauthorized
      return
    end

    # Decode the token to get the user_id
    begin
      decoded_token = JWT.decode(token, Rails.application.secrets.secret_key_base, true, algorithm: 'HS256')
      user_id = decoded_token.first['user_id']
    rescue JWT::ExpiredSignature, JWT::VerificationError
      render json: { error: 'Invalid or expired token' }, status: :unauthorized
      return
    rescue JWT::DecodeError
      render json: { error: 'Invalid token' }, status: :unauthorized
      return
    end

    # Find the user based on the user_id
    @current_user = User.find_by(id: user_id)

    # Check if the user is present
    unless @current_user
      render json: { error: 'User not found' }, status: :unauthorized
      return
    end
  end

  def current_user
    @current_user
  end
end
