class ProductController < ApplicationController

  def index
    result = ListProducts.call
    render json: result.products
  end

  def show
    result = Products::FindOne.call(id: params[:id])
    if result.success?
      render json: result.product
    else
      render json: { result: result.message }
    end
  end
end
