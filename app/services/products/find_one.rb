class Products::FindOne
  include Interactor

  def call
    product = Product.find_by(id: context.id)
    if product.nil?
      context.fail!(message: "Produto não encontrado")
    end

    context.product = product
  end
end