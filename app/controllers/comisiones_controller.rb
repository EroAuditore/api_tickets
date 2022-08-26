class ComisionesController < ApplicationController
  before_action :set_comision, only: %i[ show update destroy ]

  # GET /comisiones
  def index
    @comisiones = Comision.all

    render json: @comisiones
  end

  # GET /comisiones/1
  def show
    render json: @comision
  end

  # POST /comisiones
  def create
    @comision = Comision.new(comision_params)

    if @comision.save
      render json: @comision, status: :created, location: @comision
    else
      render json: @comision.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comisiones/1
  def update
    if @comision.update(comision_params)
      render json: @comision
    else
      render json: @comision.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comisiones/1
  def destroy
    @comision.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comision
      @comision = Comision.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comision_params
      params.fetch(:comision, {})
    end
end
