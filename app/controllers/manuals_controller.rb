class ManualsController < ApplicationController
before_filter :authorize, :only => [:index]
  
  def index
    @manuals = Manual.all
  end
  
  def new
    @manual = Manual.new
  end
  
  def edit
    @manual = Manual.find(params[:id])
  end
  
  def update
    @manual = Manual.find(params[:id])

    respond_to do |format|
      if @manual.update_attributes(params[:manual])
        flash[:notice] = 'Scenario was successfully updated.'
        format.html { redirect_to(manuals_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @manual.errors, :status => :unprocessable_entity }
      end
    end
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
  
  def destroy
    @manual = Manual.find(params[:id])
    @manual.destroy
    flash[:notice] = 'Deleted Manual Scenario'
    redirect_to manuals_path
  end
end
