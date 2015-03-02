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

  def edit
    @instrument = Instrument.find(params[:id])
  end

  def update
    @instrument = Instrument.find(params[:id])
    @instrument.update(instrument_params)
    if @instrument.save
      redirect_to instrument_path
    end
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
