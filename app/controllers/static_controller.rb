class StaticController < ApplicationController
  def home
    @quote_request = QuoteRequest.new(quote_request_params)
    add_quote_request_errors if params[:errors]
  end

  def services
  end

  def about
  end

  def details
    @quote_request = QuoteRequest.new
  end

private

  def quote_request_params
    params.require(:quote_request).permit(:name, :email, :phone, :description) if params[:quote_request]
  end

  def add_quote_request_errors
    params[:errors].each do |key, value|
      @quote_request.errors.add(key, value.to_s)
    end
  end
end
