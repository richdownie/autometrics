class ManualsController < ApplicationController
  
  def index
    @manuals = Manual.all
  end
  
  def new
    @manual = Manual.new
  end
  
  def create
    @manual = Manual.new(params[:manual])
    if @manual.save
      flash[:notice] = 'Scenario was successfully created.'
      redirect_to manuals_path
    else 
      flash[:notice] = 'Could not create new scenario'
    end
  end
end
