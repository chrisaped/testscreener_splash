class CustomersController < ApplicationController
  def create
    @customer = Customer.new(params[:customer])  
    if @customer.save!
      redirect_to root_path, notice: "Thank you. We'll email you about any new updates."
    end  
  end
end
