class RafflesController < ApplicationController
  before_action :set_raffle, only: [:show, :edit, :update, :destroy]
  before_action :create_users, only: [:new, :edit]
  before_action :create_kinds, only: [:new, :edit]

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

    if @raffle.save
      redirect_to @raffle, notice: 'Raffle was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /raffles/1
  def update
    if @raffle.update(raffle_params)
      redirect_to @raffle, notice: 'Raffle was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /raffles/1
  def destroy
    @raffle.destroy
    redirect_to raffles_url, notice: 'Raffle was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raffle
      @raffle = Raffle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def raffle_params
      params.require(:raffle).permit(:title, :description, :initial_draw_date, :start_sale_date, :end_sale_date, :draw_date, :ticket_price, :user_id, :kind_id)
    end

    def create_users
      return true if User.all.any?

      User.create(
        [
          { name: 'Admin', email: 'admin@email.com', password: 'password', is_admin: true },
          { name: 'User', email: 'user@email.com', password: 'password', is_admin: false }
        ]
      )
    end

    def create_kinds
      return true if Kind.all.any?
      Kind.create(
        [
          { description: 'Numeros de 1 a 100, de 1 em 1', initial_number: 1, step: 1, tickets_amount: 100 },
          { description: 'Numeros de 5 a 200, de 5 em 5', initial_number: 5, step: 5, tickets_amount: 40 }
        ]
      )
    end
end
