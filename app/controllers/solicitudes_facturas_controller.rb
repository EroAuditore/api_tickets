class SolicitudesFacturasController < ApplicationController
  before_action :set_solicitud_factura, only: %i[ show update destroy ]

  # GET /solicitudes_facturas
  def index
    @solicitudes_facturas = SolicitudFactura.all

    render json: @solicitudes_facturas
  end

  # GET /solicitudes_facturas/1
  def show
    render json: @solicitud_factura
  end

  # POST /solicitudes_facturas
  def create
    @solicitud_factura = SolicitudFactura.new(solicitud_factura_params)

    if @solicitud_factura.save
      render json: @solicitud_factura, status: :created, location: @solicitud_factura
    else
      render json: @solicitud_factura.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solicitudes_facturas/1
  def update
    if @solicitud_factura.update(solicitud_factura_params)
      render json: @solicitud_factura
    else
      render json: @solicitud_factura.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solicitudes_facturas/1
  def destroy
    @solicitud_factura.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitud_factura
      @solicitud_factura = SolicitudFactura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def solicitud_factura_params
      params.fetch(:solicitud_factura, {})
    end
end
