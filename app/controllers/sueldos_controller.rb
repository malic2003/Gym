class SueldosController < ApplicationController
  # GET /sueldos
  # GET /sueldos.json
  def index
    @sueldos = Sueldo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sueldos }
    end
  end

  # GET /sueldos/1
  # GET /sueldos/1.json
  def show
    @sueldo = Sueldo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sueldo }
    end
  end

  # GET /sueldos/new
  # GET /sueldos/new.json
  def new
    @sueldo = Sueldo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sueldo }
    end
  end

  # GET /sueldos/1/edit
  def edit
    @sueldo = Sueldo.find(params[:id])
  end

  # POST /sueldos
  # POST /sueldos.json
  def create
    @sueldo = Sueldo.new(params[:sueldo])

    respond_to do |format|
      if @sueldo.save
        format.html { redirect_to @sueldo, notice: 'Sueldo was successfully created.' }
        format.json { render json: @sueldo, status: :created, location: @sueldo }
      else
        format.html { render action: "new" }
        format.json { render json: @sueldo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sueldos/1
  # PUT /sueldos/1.json
  def update
    @sueldo = Sueldo.find(params[:id])

    respond_to do |format|
      if @sueldo.update_attributes(params[:sueldo])
        format.html { redirect_to @sueldo, notice: 'Sueldo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sueldo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sueldos/1
  # DELETE /sueldos/1.json
  def destroy
    @sueldo = Sueldo.find(params[:id])
    @sueldo.destroy

    respond_to do |format|
      format.html { redirect_to sueldos_url }
      format.json { head :no_content }
    end
  end
end
