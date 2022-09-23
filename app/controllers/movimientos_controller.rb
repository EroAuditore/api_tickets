class MovimientosController < ApplicationController
  before_action :set_movimiento, only: %i[ show update destroy ]

  # GET /movimientos
  def index
    @movimientos = Movimiento.all

    render json: @movimientos
  end

  # GET /movimientos/1
  def show
    render json: { 
      agente: @movimiento.agente, 
      cliente: @movimiento.cliente, 
      depositos: @movimiento.depositos, 
      comisiones: @movimiento.comisiones, 
      retornos: @movimiento.retornos, 
      movimiento: @movimiento 
    }
  end

  # POST /movimientos
  def create
    @movimiento = Movimiento.new(movimiento_params)
    byebug
    if @movimiento.save
      render json: @movimiento, status: :created, location: @movimiento
    else
      render json: @movimiento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movimientos/1
  def update
    if @movimiento.update(movimiento_params)
      render json: @movimiento
    else
      render json: @movimiento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movimientos/1
  def destroy
    @movimiento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimiento
      @movimiento = Movimiento.joins(:agente, :cliente).includes(:comisiones, :depositos, :retornos).find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movimiento_params
     
      params.require([:movimiento, :depositos]).permit(
        :cantidad_total,
        :depositos_total, 
        :retornos_total, 
        :comision_total,
        :comision_agente,
        :comision_oficina,
        :estatus,
        :estatus_deposito,
        :estatus_retorno,
        :estatus_comision,
        :agente_id,
        :cliente_id
      )
    end

     
end
