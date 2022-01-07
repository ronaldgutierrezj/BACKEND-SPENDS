class SpendsController < ApplicationController
  before_action :set_spend, only: [:show, :update, :destroy]

  # GET /spends
  def index
    @spends = Spend.all

    render json: @spends
  end

  # GET /spends/1
  def show
    render json: @spend
  end

  # POST /spends
  def create
    @spend = Spend.new(spend_params)

    if @spend.save
      render json: @spend, status: :created, location: @spend
    else
      render json: @spend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spends/1
  def update
    if @spend.update(spend_params)
      render json: @spend
    else
      render json: @spend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spends/1
  def destroy
    @spend.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spend
      @spend = Spend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spend_params
      params.require(:spend).permit(:concept, :amount, :date, :details)
    end
end
