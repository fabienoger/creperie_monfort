class ProductsController < ApplicationController
  before_action :authenticate_user!

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(:name => params[:product][:name], :price => params[:product][:price], :ingredients => params[:product][:ingredients], :category => params[:product][:category])
    if @product.save
      flash[:success] = "Le produit à bien été enregistré."
    else
      flash[:error] = "Le produit n'a pas été enregistré."
    end
  end

  def index
    @products = Product.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
