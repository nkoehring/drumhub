class WelcomeController < ApplicationController
  def index
    @user = session[:current_user_name]
  end

  def dev_login
    @user = params[:name]
    @email = params[:email]

    session[:current_user_name] = @user
    session[:current_user_email] = @email

    redirect_to :root, notice: "welcome #{@user}"
  end

  def dev_logout
    session[:current_user_name] = nil
    session[:current_user_email] = nil
    redirect_to :root, notice: "good bye"
  end
end
