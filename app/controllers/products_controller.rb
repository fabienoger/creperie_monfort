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
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.price = params[:product][:price]
    @product.ingredients = params[:product][:ingredients]
    if params[:product][:category]
      @product.category = params[:product][:category]
      flash[:info] = "La catégorie à été modifiée."
    else
      flash[:info] = "La catégorie n'a pas été modifiée."
    end
    if @product.save
      flash[:success] = "Le produit à bien été modifié."
      redirect_to '/products'
    else
      flash[:error] = "Une erreur s'est produite."
      redirect_to request.referer || '/products'
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    if product.save
      flash[:success] = "Le produit à bien été supprimé."
    else
      flash[:error] = "Le produit n'a pas été supprimé."
    end
    redirect_to '/products'
  end
end
