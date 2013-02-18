class AboutTillsController < ApplicationController
  # GET /about_tills
  # GET /about_tills.json
  def index
    @about_tills = AboutTill.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @about_tills }
    end
  end

  # GET /about_tills/1
  # GET /about_tills/1.json
  def show
    @about_till = AboutTill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @about_till }
    end
  end

  # GET /about_tills/new
  # GET /about_tills/new.json
  def new
    @about_till = AboutTill.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @about_till }
    end
  end

  # GET /about_tills/1/edit
  def edit
    @about_till = AboutTill.find(params[:id])
  end

  # POST /about_tills
  # POST /about_tills.json
  def create
    @about_till = AboutTill.new(params[:id ])

    respond_to do |format|
      if @about_till.save
        format.html { redirect_to @about_till, :notice => 'About till was successfully created.' }
        format.json { render :json => @about_till, :status => :created, :location => @about_till }
      else
        format.html { render :action => "new" }
        format.json { render :json => @about_till.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /about_tills/1
  # PUT /about_tills/1.json
  def update
    @about_till = AboutTill.find(params[:id])

    respond_to do |format|
      if @about_till.update_attributes(params[:about_till])
        format.html { redirect_to @about_till, :notice => 'About till was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @about_till.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /about_tills/1
  # DELETE /about_tills/1.json
  def destroy
    @about_till = AboutTill.find(params[:id])
    @about_till.destroy

    respond_to do |format|
      format.html { redirect_to about_tills_url }
      format.json { head :no_content }
    end
  end
end
