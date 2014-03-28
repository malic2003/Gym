class TotalsController < ApplicationController
  # GET /totals
  # GET /totals.json
  def index
    @totals = Total.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @totals }
    end
  end

  # GET /totals/1
  # GET /totals/1.json
  def show
    @total = Total.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @total }
    end
  end

  # GET /totals/new
  # GET /totals/new.json
  def new
    @total = Total.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @total }
    end
  end

  # GET /totals/1/edit
  def edit
    @total = Total.find(params[:id])
  end

  # POST /totals
  # POST /totals.json
  def create
    @total = Total.new(params[:total])

    respond_to do |format|
      if @total.save
        format.html { redirect_to @total, notice: 'Total was successfully created.' }
        format.json { render json: @total, status: :created, location: @total }
      else
        format.html { render action: "new" }
        format.json { render json: @total.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /totals/1
  # PUT /totals/1.json
  def update
    @total = Total.find(params[:id])

    respond_to do |format|
      if @total.update_attributes(params[:total])
        format.html { redirect_to @total, notice: 'Total was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @total.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /totals/1
  # DELETE /totals/1.json
  def destroy
    @total = Total.find(params[:id])
    @total.destroy

    respond_to do |format|
      format.html { redirect_to totals_url }
      format.json { head :no_content }
    end
  end
end
