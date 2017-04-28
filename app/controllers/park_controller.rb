class ParkController < ApplicationController

  def park
    @parks = Park.all
  end

  def newpark
    @park = Park.new
  end

  def addnewpark
    @park = Park.new(park_params)
    @park.save

    if @park.save!
      redirect_to park_path
    else
      redirect_to park_new_path
    end
  end

  def chosenpark
    @park = Park.find(params[:id])
  end

  private

  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
end
