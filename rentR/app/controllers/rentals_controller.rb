class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def create
      @rental = Rental.new(rental_params)
    if @rental.save
      redirect_to :rentals, notice: "Successfully added."
    else
      flash.now[:alert] = "Couldn't save. Not added."
      render :new
    end
  end

  def new
    @rental = Rental.new
  end

  def show
    @rental = Rental.find(params[:id])
    @leases = Lease.all
    @renters = Renter.all 
  end

  def update
    @rental = Rental.find(params[:id])
    if @rental.update(rental_params)
      redirect_to rental_path(@rental), notice: "Successfully updated."
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end    
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to :rentals, notice: "Successfully removed rental"
  end

  private
  def rental_params
        params.require(:rental).permit(:address, :apartment)
  end
end
