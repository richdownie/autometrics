class ResultsController < ApplicationController
  before_filter :authorize, :only => [:index]
  
  def index
    @results = Result.paginate :page => params[:page], :order => 'created_at DESC', :conditions => ["created_at >= ?", 3.days.ago]
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @results }
      format.json { render :json => @results }
      format.atom

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
