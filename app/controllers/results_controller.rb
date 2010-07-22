class ResultsController < ApplicationController
  before_filter :authorize, :only => [:index]
  def index
    @results = Result.not_false_positives.find(:all, :order => 'created_at DESC', :conditions => ["created_at >= ?", 1.days.ago])
    # @results = Result.not_false_positives.find(:all, :conditions => (["created_at >= ?", 1.days.ago], :order => 'created_at DESC')
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
      format.json { render :json => @results }
      format.atom
    end
  end
  
  def edit
    @result = Result.find(params[:id])
  end
  
  def update
    @result = Result.find(params[:id])

    respond_to do |format|
      if @result.update_attributes(params[:result])
        flash[:notice] = 'Timing was successfully updated.'
        format.html { redirect_to(results_path) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @result.errors, :status => :unprocessable_entity }
      end
    end
  end
  
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

  def destroy
    @result = Result.find(params[:id])
    @result.destroy

    respond_to do |format|
      format.html { redirect_to(results_url) }
      format.xml  { head :ok }
    end
  end
end
