class QuoteRequestsController < ApplicationController

  def create
    @quote_request = QuoteRequest.new(quote_request_params)

    if @quote_request.save
      flash[:success] = "Thank you for you interest! We will contact you shortly."
    else
      flash[:error] = "We are sorry but something went wrong. Please try again."
    end

    redirect_to :back
  end

private

  def quote_request_params
    params.require(:quote_request).permit(:name, :email, :phone, :description)
  end
end
