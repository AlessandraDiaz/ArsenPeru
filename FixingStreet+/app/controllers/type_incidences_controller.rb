class TypeIncidencesController < ApplicationController
  before_action :set_type_incidence, only: [:show, :edit, :update, :destroy]

  # GET /type_incidences
  # GET /type_incidences.json
  def index
    @type_incidences = TypeIncidence.all
  end

  # GET /type_incidences/1
  # GET /type_incidences/1.json
  def show
  end

  # GET /type_incidences/new
  def new
    @type_incidence = TypeIncidence.new
  end

  # GET /type_incidences/1/edit
  def edit
  end

  # POST /type_incidences
  # POST /type_incidences.json
  def create
    @type_incidence = TypeIncidence.new(type_incidence_params)

    respond_to do |format|
      if @type_incidence.save
        format.html { redirect_to @type_incidence, notice: 'Tipo incidencia creado exitosamente' }
        format.json { render :show, status: :created, location: @type_incidence }
      else
        format.html { render :new }
        format.json { render json: @type_incidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_incidences/1
  # PATCH/PUT /type_incidences/1.json
  def update
    respond_to do |format|
      if @type_incidence.update(type_incidence_params)
        format.html { redirect_to @type_incidence, notice: 'Tipo incidencia actualizada exitosamente' }
        format.json { render :show, status: :ok, location: @type_incidence }
      else
        format.html { render :edit }
        format.json { render json: @type_incidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_incidences/1
  # DELETE /type_incidences/1.json
  def destroy
    @type_incidence.destroy
    respond_to do |format|
      format.html { redirect_to type_incidences_url, notice: 'Tipo incidencia eliminada exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_incidence
      @type_incidence = TypeIncidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_incidence_params
      params.require(:type_incidence).permit(:name, :status)
    end
end
