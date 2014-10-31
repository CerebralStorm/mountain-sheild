class PropertiesController < ApplicationController

  def index
    @properties = current_user.properties
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property, flash: { success: "Your property was successfully added."}
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end

private

  def property_params
    params.require(:property).permit(:address, :city, :state, :zip, :user_id)
  end
end
