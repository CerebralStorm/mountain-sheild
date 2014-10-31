class Sales::ContractsController < ApplicationController
  before_action :set_user
  before_action :set_property

  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def create
    @contract = @property.contracts.new(contract_params)

    if @contract.save
      redirect_to sales_user_property_contract_path(@user, @property, @contract)
    else
      render "new"
    end
  end

  def update
    @contract = Contract.find(params[:id])

    if @contract.update_attributes(contract_params)
      redirect_to sales_user_property_contract_path(@user, @property, @contract)
    else
      render "edit"
    end
  end

  def destroy
    Contract.find(params[:id]).destroy
    redirect_to sales_user_path(@user)
  end

private

  def contract_params
    params.require(:contract).permit(:status, :initial_service_date, :initial_service_charge)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_property
    @property = Property.find(params[:property_id])
  end
end