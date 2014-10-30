class QuoteRequestsController < ApplicationController

  def create
    @quote_request = QuoteRequest.new(quote_request_params)

    if @quote_request.save
      redirect_to home_path, flash: { success: "Thank you for you interest! We will contact you shortly." }
    else
      redirect_to home_path(quote_request: @quote_request.attributes, errors: @quote_request.errors.messages), flash: { error: "We are sorry but something went wrong. Please try again." }
    end
  end

private

  def quote_request_params
    params.require(:quote_request).permit(:name, :email, :phone, :description)
  end
end
