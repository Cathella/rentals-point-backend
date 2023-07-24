class Api::V1::UserProfilesController < ApplicationController
  # GET /api/v1/user_profiles
  def index
    user_profiles = UserProfile.all

    render json: user_profiles
  end
  
  # POST /api/v1/user_profiles
  def create
    user = current_user
    user_profile = user.build_user_profile(user_profile_params)

    if user_profile.save
      render json: { message: 'User profile created successfully' }, status: :created
    else
      render json: { errors: user_profile.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/user_profiles
  def update
    user_profile = current_user.user_profile

    if user_profile.update(user_profile_params)
      render json: { message: 'User profile updated successfully' }
    else
      render json: { errors: user_profile.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /api/v1/user_profiles
  def show
    user_profile = current_user.user_profile

    if user_profile
      render json: user_profile
    else
      render json: { message: 'User profile not found' }, status: :not_found
    end
  end

  private

  def user_profile_params
    params.require(:user_profile).permit(:name, :bio, :preferences, :budget)
  end
end
