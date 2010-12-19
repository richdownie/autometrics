class ManualsController < ApplicationController
before_filter :authorize, :only => [:index]
  
  def index
    if params[:search]
      @manuals_fail = Manual.fail.find(:all, :conditions => ['iteration_id = ?', "#{params[:search]}"], :order => 'created_at DESC')
      @manuals_pass = Manual.pass.find(:all, :conditions => ['iteration_id = ?', "#{params[:search]}"], :order => 'created_at DESC')
      @total = Manual.find(:all, :conditions => ['iteration_id = ?', "#{params[:search]}"]).size
      @fail_count = Manual.fail.find(:all, :conditions => ['iteration_id = ?', "#{params[:search]}"]).size
      @pass_count = Manual.pass.find(:all, :conditions => ['iteration_id = ?', "#{params[:search]}"]).size
    else
      @manuals_fail = Manual.fail.find(:all, :conditions => ['iteration_id = ?', "1"], :order => 'created_at DESC')
      @manuals_pass = Manual.pass.find(:all, :conditions => ['iteration_id = ?', "1"], :order => 'created_at DESC')
      @total = Manual.count
      @fail_count = Manual.fail.count
      @pass_count = Manual.pass.count
    end
    @fail_count = @fail_count.to_f / @total.to_f * 100
    @pass_count = @pass_count.to_f / @total.to_f * 100
    
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
      
  def reset_scenarios
    @manuals = Manual.green_scenarios.reset
    redirect_to manuals_path
  end
      
  def create
    @manual = Manual.new(params[:manual])

    respond_to do |format|
      if @manual.save
        flash[:notice] = 'Step was successfully created.'
        format.html { redirect_to manuals_path }
        format.xml  { render :xml => @manual, :status => :created, :location => @manual }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @manual.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @manual = Manual.find(params[:id])
    @manual.destroy
    flash[:notice] = 'Deleted Manual Scenario'
    redirect_to manuals_path
  end
end
