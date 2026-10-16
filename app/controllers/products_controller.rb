class ProductsController < ApplicationController
  #新規投稿画面
  def new
    @product = Product.new
  end

  #新規投稿
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to products_path
    else
      render :new, status: unprocessable_entity
    end
  end

  #投稿一覧画面
  def index
    @products = Product.all
  end

  private

  def product_params
    params.require(:product).permit(:title, :content)
  end
end
