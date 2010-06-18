class SessionsController < ApplicationController
  def create
    session[:password] = params[:password]
    if admin?
      flash[:notice] = "Welcome!"
      redirect_to results_path
    else
      flash[:notice] = "Unauthorized access"
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Bye"
    redirect_to login_path
  end
end
