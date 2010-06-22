class HomeController < ApplicationController
  def index
    @results = Result.find(:all, :order => 'created_at DESC')
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
      format.json { render :json => @results }
      format.atom
    end
  end
  
  def dump
    Result.create(:title => params[:push].gsub("features", ""))
    redirect_to results_path
  end
  
  private

  def fail_unless_in_development_mode
    raise unless %w(development).include?(Rails.env)
  end
end
