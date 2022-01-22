class OccupationAreasController < ApplicationController
  before_action :set_occupation_area, only: %i[ show edit update destroy ]

  # GET /occupation_areas or /occupation_areas.json
  def index
    @occupation_areas = OccupationArea.all
  end

  # GET /occupation_areas/1 or /occupation_areas/1.json
  def show
  end

  # GET /occupation_areas/new
  def new
    @occupation_area = OccupationArea.new
  end

  # GET /occupation_areas/1/edit
  def edit
  end

  # POST /occupation_areas or /occupation_areas.json
  def create
    @occupation_area = OccupationArea.new(occupation_area_params)

    respond_to do |format|
      if @occupation_area.save
        format.html { redirect_to occupation_area_url(@occupation_area), notice: "Occupation area was successfully created." }
        format.json { render :show, status: :created, location: @occupation_area }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @occupation_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occupation_areas/1 or /occupation_areas/1.json
  def update
    respond_to do |format|
      if @occupation_area.update(occupation_area_params)
        format.html { redirect_to occupation_area_url(@occupation_area), notice: "Occupation area was successfully updated." }
        format.json { render :show, status: :ok, location: @occupation_area }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @occupation_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occupation_areas/1 or /occupation_areas/1.json
  def destroy
    @occupation_area.destroy

    respond_to do |format|
      format.html { redirect_to occupation_areas_url, notice: "Occupation area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occupation_area
      @occupation_area = OccupationArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def occupation_area_params
      params.require(:occupation_area).permit(:name, :description)
    end
end
