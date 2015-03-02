class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def new
    @instrument = Instrument.new
  end
end
