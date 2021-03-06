class RafflesController < ApplicationController
  before_action :set_raffle, only: [:show, :edit, :update, :destroy]

  # GET /raffles
  def index
    @raffles = Raffle.all
  end

  # GET /raffles/1
  def show
  end

  # GET /raffles/new
  def new
    @raffle = Raffle.new
  end

  # GET /raffles/1/edit
  def edit
  end

  # POST /raffles
  def create
    @raffle = Raffle.new(raffle_params)
    @raffle.user = current_user
    @raffle.kind = Kind.first

    if @raffle.save
      CreateRaffleTicketsJob.perform_later @raffle
      redirect_to @raffle, notice: 'Rifa criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /raffles/1
  def update
    if @raffle.update(raffle_params)
      redirect_to @raffle, notice: 'Rifa atualizada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /raffles/1
  def destroy
    @raffle.destroy
    redirect_to raffles_url, notice: 'Rifa excluída com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raffle
      @raffle = Raffle.find(params[:id])
      # @raffle = current_user.raffles.where(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raffle_params
      params.require(:raffle).permit(:title, :description, :initial_draw_date, :start_sale_date, :end_sale_date, :draw_date, :ticket_price)
    end
end
