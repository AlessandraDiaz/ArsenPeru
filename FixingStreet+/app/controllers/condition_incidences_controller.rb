class ConditionIncidencesController < ApplicationController
  before_action :set_condition_incidence, only: [:show, :edit, :update, :destroy]

  # GET /condition_incidences
  # GET /condition_incidences.json
  def index
    @condition_incidences = ConditionIncidence.all
  end

  # GET /condition_incidences/1
  # GET /condition_incidences/1.json
  def show
  end

  # GET /condition_incidences/new
  def new
    @condition_incidence = ConditionIncidence.new
  end

  # GET /condition_incidences/1/edit
  def edit
  end

  # POST /condition_incidences
  # POST /condition_incidences.json
  def create
    @condition_incidence = ConditionIncidence.new(condition_incidence_params)

    respond_to do |format|
      if @condition_incidence.save
        format.html { redirect_to @condition_incidence, notice: 'Condition incidence was successfully created.' }
        format.json { render :show, status: :created, location: @condition_incidence }
      else
        format.html { render :new }
        format.json { render json: @condition_incidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /condition_incidences/1
  # PATCH/PUT /condition_incidences/1.json
  def update
    respond_to do |format|
      if @condition_incidence.update(condition_incidence_params)
        format.html { redirect_to @condition_incidence, notice: 'Condition incidence was successfully updated.' }
        format.json { render :show, status: :ok, location: @condition_incidence }
      else
        format.html { render :edit }
        format.json { render json: @condition_incidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /condition_incidences/1
  # DELETE /condition_incidences/1.json
  def destroy
    @condition_incidence.destroy
    respond_to do |format|
      format.html { redirect_to condition_incidences_url, notice: 'Condition incidence was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_condition_incidence
      @condition_incidence = ConditionIncidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def condition_incidence_params
      params.require(:condition_incidence).permit(:name, :status)
    end
end
