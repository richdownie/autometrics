class ResultsController < ApplicationController
  before_filter :authorize, :only => [:index]
  
  # GET /results
  # GET /results.xml
  def index
    @results = Result.find(:all, :order => "created_at DESC")
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
    end
  end
  
  # POST /results
  # POST /results.xml
  def create
    @result = Result.new(params[:result])

    respond_to do |format|
      if @result.save
        flash[:notice] = 'Result was successfully created.'
        format.html { redirect_to(@result) }
        format.xml  { render :xml => @result, :status => :created, :location => @result }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @result.errors, :status => :unprocessable_entity }
      end
    end
  end


  # DELETE /results/1
  # DELETE /results/1.xml
  def destroy
    @result = Result.find(params[:id])
    @result.destroy

    respond_to do |format|
      format.html { redirect_to(results_url) }
      format.xml  { head :ok }
    end
  end
end
