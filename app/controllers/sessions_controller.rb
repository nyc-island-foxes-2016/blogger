class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts 'Login successful'
      redirect_to posts_path
    else
      puts 'login failed'
      render :new
    end
  end


end