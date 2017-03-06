class SessionsController < ApplicationController
  def new
  end

  def create
    if request.env["omniauth.auth"]
      user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      user = User.find_by(username: params[:session][:username])
      if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        redirect_to dashboard_path
      else
        flash.now[:notice] = "Username and/or Password is invalid, please try again."
        render :new
      end
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end


