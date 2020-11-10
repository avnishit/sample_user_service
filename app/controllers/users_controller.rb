class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_user, only: [:show]
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    # GET /users
    def index
      @users = User.all
      render json: @users.as_json, status: 200
    end

    # GET /users/:id
  def show
    render json: @user.as_json, status: 200
  end

    # POST /users
  def create
    @user = User.create!(params.permit(:first_name, :last_name, :email, :password))
    render json: @user.as_json, status: 201
  end

  def set_user
    @user = User.find(params[:id])
  end

  def not_found
    render json: {}, status:404
  end
end
