class VitalsController < ApplicationController
  before_action :set_vital, only: [:show, :edit, :update, :destroy]

  # GET /vitals
  # GET /vitals.json
  def index
    @vitals = Vital.all
  end

  # GET /vitals/1
  # GET /vitals/1.json
  def show
  end

  # GET /vitals/new
  def new
    @vital = Vital.new
  end

  # GET /vitals/1/edit
  def edit
  end

  # POST /vitals
  # POST /vitals.json
  def create
    @vital = Vital.new(vital_params)

    respond_to do |format|
      if @vital.save
        format.html { redirect_to @vital, notice: 'Vital was successfully created.' }
        format.json { render :show, status: :created, location: @vital }
      else
        format.html { render :new }
        format.json { render json: @vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitals/1
  # PATCH/PUT /vitals/1.json
  def update
    respond_to do |format|
      if @vital.update(vital_params)
        format.html { redirect_to @vital, notice: 'Vital was successfully updated.' }
        format.json { render :show, status: :ok, location: @vital }
      else
        format.html { render :edit }
        format.json { render json: @vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitals/1
  # DELETE /vitals/1.json
  def destroy
    @vital.destroy
    respond_to do |format|
      format.html { redirect_to vitals_url, notice: 'Vital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vital
      @vital = Vital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vital_params
      params.require(:vital).permit(:heart_rate, :date, :blood_pressure, :respiratory_rate, :temperature, :red_blood_cell, :white_blood_cell, :chemo_date, :chemo_type)
    end
end
