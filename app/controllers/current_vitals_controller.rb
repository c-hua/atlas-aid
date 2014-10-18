class CurrentVitalsController < ApplicationController
  before_action :set_current_vital, only: [:show, :edit, :update, :destroy]

  # GET /current_vitals
  # GET /current_vitals.json
  def index
    @current_vitals = CurrentVital.all
  end

  # GET /current_vitals/1
  # GET /current_vitals/1.json
  def show
  end

  # GET /current_vitals/new
  def new
    @current_vital = CurrentVital.new
  end

  # GET /current_vitals/1/edit
  def edit
  end

  # POST /current_vitals
  # POST /current_vitals.json
  def create
    @current_vital = CurrentVital.new(current_vital_params)

    respond_to do |format|
      if @current_vital.save
        format.html { redirect_to @current_vital, notice: 'Current vital was successfully created.' }
        format.json { render :show, status: :created, location: @current_vital }
      else
        format.html { render :new }
        format.json { render json: @current_vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_vitals/1
  # PATCH/PUT /current_vitals/1.json
  def update
    respond_to do |format|
      if @current_vital.update(current_vital_params)
        format.html { redirect_to @current_vital, notice: 'Current vital was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_vital }
      else
        format.html { render :edit }
        format.json { render json: @current_vital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_vitals/1
  # DELETE /current_vitals/1.json
  def destroy
    @current_vital.destroy
    respond_to do |format|
      format.html { redirect_to current_vitals_url, notice: 'Current vital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_vital
      @current_vital = CurrentVital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_vital_params
      params.require(:current_vital).permit(:current_interventions, :status, :dosage_dates, :surgeries, :eligibility_clinical)
    end
end
