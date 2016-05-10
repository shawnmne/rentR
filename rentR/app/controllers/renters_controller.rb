class RentersController < ApplicationController
  def index
    @renters = renter.all
  end

  def create
  end

  def new
    @renter = Renter.new
  end

  def show
    @renter = Renter.find(params[:id])
  end

  def update
  end

  def edit
    @renter = Renter.find(params[:id])
  end

  def destroy
    @renter = Renter.find(params[:id])
    @renter.destroy
    redirect_to :renters, notice: "Successfully removed renter"
  end
end
