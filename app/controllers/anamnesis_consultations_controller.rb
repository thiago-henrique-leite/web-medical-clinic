class AnamnesisConsultationsController < ApplicationController
  before_action :set_anamnesis_consultation, only: %i[ show edit update destroy ]

  # GET /anamnesis_consultations or /anamnesis_consultations.json
  def index
    @anamnesis_consultations = AnamnesisConsultation.all
  end

  # GET /anamnesis_consultations/1 or /anamnesis_consultations/1.json
  def show
  end

  # GET /anamnesis_consultations/new
  def new
    @anamnesis_consultation = AnamnesisConsultation.new
  end

  # GET /anamnesis_consultations/1/edit
  def edit
  end

  # POST /anamnesis_consultations or /anamnesis_consultations.json
  def create
    @anamnesis_consultation = AnamnesisConsultation.new(anamnesis_consultation_params)

    respond_to do |format|
      if @anamnesis_consultation.save
        format.html { redirect_to anamnesis_consultation_url(@anamnesis_consultation), notice: "Anamnesis consultation was successfully created." }
        format.json { render :show, status: :created, location: @anamnesis_consultation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @anamnesis_consultation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anamnesis_consultations/1 or /anamnesis_consultations/1.json
  def update
    respond_to do |format|
      if @anamnesis_consultation.update(anamnesis_consultation_params)
        format.html { redirect_to anamnesis_consultation_url(@anamnesis_consultation), notice: "Anamnesis consultation was successfully updated." }
        format.json { render :show, status: :ok, location: @anamnesis_consultation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @anamnesis_consultation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anamnesis_consultations/1 or /anamnesis_consultations/1.json
  def destroy
    @anamnesis_consultation.destroy

    respond_to do |format|
      format.html { redirect_to anamnesis_consultations_url, notice: "Anamnesis consultation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anamnesis_consultation
      @anamnesis_consultation = AnamnesisConsultation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anamnesis_consultation_params
      params.require(:anamnesis_consultation).permit(:anamnesi_id, :consultation_id, :answer)
    end
end
