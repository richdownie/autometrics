class HomeController < ApplicationController
  def index
  end
  
  def dump
    Result.create(:title => params[:push].gsub("features\", ""))
    redirect_to results_path
  end
  
  private

  def fail_unless_in_development_mode
    raise unless %w(development).include?(Rails.env)
  end
end
