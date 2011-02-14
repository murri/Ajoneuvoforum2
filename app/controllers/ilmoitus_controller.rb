class IlmoitusController < ApplicationController
  # GET /ilmoitus
  # GET /ilmoitus.xml
  def index
    @ilmoitus = Ilmoitu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ilmoitus }
    end
  end

  # GET /ilmoitus/1
  # GET /ilmoitus/1.xml
  def show
    @ilmoitu = Ilmoitu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ilmoitu }
    end
  end

  # GET /ilmoitus/new
  # GET /ilmoitus/new.xml
  def new
    @ilmoitu = Ilmoitu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ilmoitu }
    end
  end

  # GET /ilmoitus/1/edit
  def edit
    @ilmoitu = Ilmoitu.find(params[:id])
  end

  # POST /ilmoitus
  # POST /ilmoitus.xml
  def create
    @ilmoitu = Ilmoitu.new(params[:ilmoitu])

    respond_to do |format|
      if @ilmoitu.save
        format.html { redirect_to(@ilmoitu, :notice => 'Ilmoitu was successfully created.') }
        format.xml  { render :xml => @ilmoitu, :status => :created, :location => @ilmoitu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ilmoitu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ilmoitus/1
  # PUT /ilmoitus/1.xml
  def update
    @ilmoitu = Ilmoitu.find(params[:id])

    respond_to do |format|
      if @ilmoitu.update_attributes(params[:ilmoitu])
        format.html { redirect_to(@ilmoitu, :notice => 'Ilmoitu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ilmoitu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ilmoitus/1
  # DELETE /ilmoitus/1.xml
  def destroy
    @ilmoitu = Ilmoitu.find(params[:id])
    @ilmoitu.destroy

    respond_to do |format|
      format.html { redirect_to(ilmoitus_url) }
      format.xml  { head :ok }
    end
  end
end
