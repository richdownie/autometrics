class HomeController < ApplicationController
  def index
  end
  
  def dump
    Result.create(:title => @testing_title)
  end
  
  # def update
  #   @user.password = params[:user][:password]
  #   @user.password_confirmation = params[:user][:password_confirmation]
  #   if @user.save
  #     flash[:notice] = "Password successfully updated"
  #     redirect_to account_path
  #   else
  #     render :action => :edit
  #   end
  # end
end
