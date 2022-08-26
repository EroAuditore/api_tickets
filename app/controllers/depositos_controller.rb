class DepositosController < ApplicationController
  before_action :set_deposito, only: %i[ show update destroy ]

  # GET /depositos
  def index
    @depositos = Deposito.all

    render json: @depositos
  end

  # GET /depositos/1
  def show
    render json: @deposito
  end

  # POST /depositos
  def create
    @deposito = Deposito.new(deposito_params)

    if @deposito.save
      render json: @deposito, status: :created, location: @deposito
    else
      render json: @deposito.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /depositos/1
  def update
    if @deposito.update(deposito_params)
      render json: @deposito
    else
      render json: @deposito.errors, status: :unprocessable_entity
    end
  end

  # DELETE /depositos/1
  def destroy
    @deposito.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deposito
      @deposito = Deposito.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deposito_params
      params.fetch(:deposito, {})
    end
end
