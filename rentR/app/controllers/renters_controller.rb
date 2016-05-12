class RentersController < ApplicationController
  def index
    @renters = Renter.all
  end

  def create
    @renter = Renter.new(renter_params)
    if @renter.save
      redirect_to :renters, notice: "Successfully added."
    else
      flash.now[:alert] = "Couldn't save. Not added."
      render :new
    end
  end

  def new    
    @renter = Renter.new
  end

  def show
    @renter = Renter.find(params[:id])
  end

  def update
    @renter = Renter.find(params[:id])
    if @renter.update(renter_params)
      redirect_to renter_path(@renter), notice: "Successfully updated."
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end    
  end

  def edit
    @renter = Renter.find(params[:id])
  end

  def destroy
    @renter = Renter.find(params[:id])
    @renter.destroy
    redirect_to :renters, notice: "Successfully removed renter"
  end

  private
  def renter_params
        params.require(:renter).permit(:name, :phone, :email, :rental_id)
  end
end
