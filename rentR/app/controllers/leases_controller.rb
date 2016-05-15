class LeasesController < ApplicationController
  def index
    @leases = Lease.all
  end

  def create

    @lease = Lease.new(lease_params)
    if @lease.save
      redirect_to lease_path(@lease), notice: "Successfully added"
    else
      flash.now[:alert] = "Couldn't save.  Not added."
      render :new
    end
  end

  def new
    @lease = Lease.new
  end

  def show
    @lease = Lease.find(params[:id])
  end

  def update
    @lease = Lease.find(params[:id])
    if @lease.update(lease_params)
      redirect_to lease_path(@lease), notice: "Successfully updated."
    else
      flash.now[:alert]="Couldn't update."
      render :edit
    end
  end

  def edit
    @lease = Lease.find(params[:id])
  end

  def destroy
    @lease = Lease.find(params[:id])
    @lease.destroy
    redirect_to :rentals, notice: "Successfully removed lease"
  end

  private
  def lease_params
        params.require(:lease).permit(:rent_amount, :start_date, :end_date, :rental_id)
  end  
end
