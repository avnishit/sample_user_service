class SessionsController < ApplicationController
  def new
  end

  def destroy
    reset_session
    redirect_to '/home'
  end

  def home
  end

  def create
    user = User.find_by(email: params[:username])
    if user && user.authenticate(params[:password])
        session[:user_id] = user.id 
    end
    redirect_to '/home'
  end

end
