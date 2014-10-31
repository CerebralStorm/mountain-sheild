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

  def edit
    @property = Property.find(params[:id])
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property, flash: { success: "Your property was successfully added." }
    else
      render "new"
    end
  end

  def update
    @property = Property.find(params[:id])

    if @property.update_attributes(property_params)
      redirect_to @property, flash: { success: "Your property was successfully updated." }
    else
      render 'edit'
    end
  end

  def destroy
    Property.find(params[:id]).destroy
    redirect_to properties_path, flash: { success: "Your property was successfully removed" }
  end

private

  def property_params
    params.require(:property).permit(:address, :city, :state, :zip, :user_id)
  end
end
