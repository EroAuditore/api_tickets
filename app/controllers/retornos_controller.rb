class RetornosController < ApplicationController
  before_action :set_retorno, only: %i[ show update destroy ]

  # GET /retornos
  def index
    @retornos = Retorno.all

    render json: @retornos
  end

  # GET /retornos/1
  def show
    render json: @retorno
  end

  # POST /retornos
  def create
    @retorno = Retorno.new(retorno_params)

    if @retorno.save
      render json: @retorno, status: :created, location: @retorno
    else
      render json: @retorno.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /retornos/1
  def update
    if @retorno.update(retorno_params)
      render json: @retorno
    else
      render json: @retorno.errors, status: :unprocessable_entity
    end
  end

  # DELETE /retornos/1
  def destroy
    @retorno.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retorno
      @retorno = Retorno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def retorno_params
      params.fetch(:retorno, {})
    end
end
