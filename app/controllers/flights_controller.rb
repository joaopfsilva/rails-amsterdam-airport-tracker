class FlightsController < ApplicationController

  before_action :do_more_magic, only: [:show]

  def show
  end

  def index
    @flights = Flight.all
  end

  private

  def do_more_magic()
    @flight = Flight.find(params[:id])
  end
end
