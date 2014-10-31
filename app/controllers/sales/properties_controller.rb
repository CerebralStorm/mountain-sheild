class Sales::PropertiesController < ApplicationController
  before_action :set_user

  def index
    @properties = user.properties
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
    @property = @user.properties.new(property_params)

    if @property.save
      redirect_to sales_user_property_path(@user, @property)
    else
      render "new"
    end
  end

  def update
    @property = Property.find(params[:id])

    if @property.update_attributes(property_params)
      redirect_to sales_user_property_path(@user, @property)
    else
      render "edit"
    end
  end

  def destroy
    Property.find(params[:id]).destroy
    redirect_to sales_user_path(@user)
  end

private

  def property_params
    params.require(:property).permit(:address, :city, :state, :zip)
  end

  def set_user
    @user = User.find(params[:user_id])
  end
end