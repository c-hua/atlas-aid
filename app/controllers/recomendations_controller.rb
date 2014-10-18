class RecomendationsController < ApplicationController
  before_action :set_recomendation, only: [:show, :edit, :update, :destroy]

  # GET /recomendations
  # GET /recomendations.json
  def index
    @recomendations = Recomendation.all
  end

  # GET /recomendations/1
  # GET /recomendations/1.json
  def show
  end

  # GET /recomendations/new
  def new
    @recomendation = Recomendation.new
  end

  # GET /recomendations/1/edit
  def edit
  end

  # POST /recomendations
  # POST /recomendations.json
  def create
    @recomendation = Recomendation.new(recomendation_params)

    respond_to do |format|
      if @recomendation.save
        format.html { redirect_to @recomendation, notice: 'Recomendation was successfully created.' }
        format.json { render :show, status: :created, location: @recomendation }
      else
        format.html { render :new }
        format.json { render json: @recomendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recomendations/1
  # PATCH/PUT /recomendations/1.json
  def update
    respond_to do |format|
      if @recomendation.update(recomendation_params)
        format.html { redirect_to @recomendation, notice: 'Recomendation was successfully updated.' }
        format.json { render :show, status: :ok, location: @recomendation }
      else
        format.html { render :edit }
        format.json { render json: @recomendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recomendations/1
  # DELETE /recomendations/1.json
  def destroy
    @recomendation.destroy
    respond_to do |format|
      format.html { redirect_to recomendations_url, notice: 'Recomendation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recomendation
      @recomendation = Recomendation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recomendation_params
      params.require(:recomendation).permit(:doctor_id, :comment)
    end
end
