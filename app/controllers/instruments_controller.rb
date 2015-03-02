class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    if @instrument.save
      redirect_to instruments_path
    end
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def delete
    @instrument = Instrument.find(params[:id])
  end

  def destroy
    @instrument = Instrument.find(params[:id])
    if @instrument.destroy
      redirect_to instruments_path
    end
  end

  private
  def instrument_params
    params.require(:instrument).permit(:name, :group, :price)
  end
end
