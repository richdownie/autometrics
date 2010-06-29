class TimingsController < ApplicationController
  # GET /timings
  # GET /timings.xml
  def index
    @timings = Timing.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @timings }
    end
  end

  # GET /timings/1
  # GET /timings/1.xml
  def show
    @timing = Timing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timing }
    end
  end

  # GET /timings/new
  # GET /timings/new.xml
  def new
    @timing = Timing.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @timing }
    end
  end

  # GET /timings/1/edit
  def edit
    @timing = Timing.find(params[:id])
  end

  # POST /timings
  # POST /timings.xml
  def create
    @timing = Timing.new(params[:timing])

    respond_to do |format|
      if @timing.save
        flash[:notice] = 'Timing was successfully created.'
        format.html { redirect_to(@timing) }
        format.xml  { render :xml => @timing, :status => :created, :location => @timing }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @timing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timings/1
  # PUT /timings/1.xml
  def update
    @timing = Timing.find(params[:id])

    respond_to do |format|
      if @timing.update_attributes(params[:timing])
        flash[:notice] = 'Timing was successfully updated.'
        format.html { redirect_to(@timing) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timing.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timings/1
  # DELETE /timings/1.xml
  def destroy
    @timing = Timing.find(params[:id])
    @timing.destroy

    respond_to do |format|
      format.html { redirect_to(timings_url) }
      format.xml  { head :ok }
    end
  end
end
