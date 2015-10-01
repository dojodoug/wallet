class RacketsController < ApplicationController
  before_action :set_racket, only: [:show, :edit, :update, :destroy]

  # GET /rackets
  def index
    @rackets = Racket.all
    @current_balance = Racket.current_balance
    @racket_total = Racket.racket_total
  end

  def dashboard
    @current_balance = Racket.current_balance
    @racket_total = Racket.racket_total
    @broke = Racket.broke
  end

  # GET /rackets/1
  def show
  end

  # GET /rackets/new
  def new
    @racket = Racket.new
  end

  # GET /rackets/1/edit
  def edit
  end

  # POST /rackets
  def create
    @racket = Racket.new(racket_params)

    if @racket.save
      redirect_to @racket, notice: 'Racket was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /rackets/1
  def update
    if @racket.update(racket_params)
      redirect_to @racket, notice: 'Racket was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /rackets/1
  def destroy
    @racket.destroy
    redirect_to rackets_url, notice: 'Racket was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_racket
      @racket = Racket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def racket_params
      params.require(:racket).permit(:amount, :entity)
    end
end
