class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end
  def new
    @market = Market.new
  end

  def create
      # redirect_to @market
    @market = Market.new(market_params)
    if @market.save
    else
      render 'new'
    end
   redirect_to market_path(@market)
  end

  def show
    @markets = Market.all
  end
  private
    def market_params
      params.require(:market).permit(:address, :link, :products, :schedule)
    end


end
