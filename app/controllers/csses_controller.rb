class CssesController < ApplicationController
  # GET /csses
  # GET /csses.xml
  def index
    @csses = Css.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @csses }
    end
  end

  # GET /csses/1
  # GET /csses/1.xml
  def show
    @css = Css.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @css }
    end
  end

  # GET /csses/new
  # GET /csses/new.xml
  def new
    @css = Css.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @css }
    end
  end

  # GET /csses/1/edit
  def edit
    @css = Css.find(params[:id])
  end

  # POST /csses
  # POST /csses.xml
  def create
    @css = Css.new(params[:css])

    respond_to do |format|
      if @css.save
        format.html { redirect_to(@css, :notice => 'Css was successfully created.') }
        format.xml  { render :xml => @css, :status => :created, :location => @css }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @css.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /csses/1
  # PUT /csses/1.xml
  def update
    @css = Css.find(params[:id])

    respond_to do |format|
      if @css.update_attributes(params[:css])
        format.html { redirect_to(@css, :notice => 'Css was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @css.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /csses/1
  # DELETE /csses/1.xml
  def destroy
    @css = Css.find(params[:id])
    @css.destroy

    respond_to do |format|
      format.html { redirect_to(csses_url) }
      format.xml  { head :ok }
    end
  end
end
