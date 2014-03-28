class SubclasesController < ApplicationController
  # GET /subclases
  # GET /subclases.json
  def index
    @subclases = Subclase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @subclases }
    end
  end

  # GET /subclases/1
  # GET /subclases/1.json
  def show
    @subclase = Subclase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subclase }
    end
  end

  # GET /subclases/new
  # GET /subclases/new.json
  def new
    @subclase = Subclase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @subclase }
    end
  end

  # GET /subclases/1/edit
  def edit
    @subclase = Subclase.find(params[:id])
  end

  # POST /subclases
  # POST /subclases.json
  def create
    @subclase = Subclase.new(params[:subclase])

    respond_to do |format|
      if @subclase.save
        format.html { redirect_to @subclase, notice: 'Subclase was successfully created.' }
        format.json { render json: @subclase, status: :created, location: @subclase }
      else
        format.html { render action: "new" }
        format.json { render json: @subclase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /subclases/1
  # PUT /subclases/1.json
  def update
    @subclase = Subclase.find(params[:id])

    respond_to do |format|
      if @subclase.update_attributes(params[:subclase])
        format.html { redirect_to @subclase, notice: 'Subclase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subclase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subclases/1
  # DELETE /subclases/1.json
  def destroy
    @subclase = Subclase.find(params[:id])
    @subclase.destroy

    respond_to do |format|
      format.html { redirect_to subclases_url }
      format.json { head :no_content }
    end
  end
end
