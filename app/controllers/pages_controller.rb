class PagesController < ApplicationController
  def home
  end

  def contact
    @message = Message.new
  end

  def create
    @message = Message.new params.require(:message).permit(:name, :email, :content)
    if @message.save
      redirect_to '/contact'
    else
      render "contact"
    end
  end

  def carte
    @galettes = Product.where(category: 'galette')
    @froments_sucre = Product.where(category: 'froment_sucre')
    @omelettes_salades = Product.where(category: 'omelette_salade')
    @froments_special = Product.where(category: 'froment_special')
    @aperitifs = Product.where(category: 'aperitif')
    @bieres_bretonnes = Product.where(category: 'biere_bretonnes')
    @cidres_traditionnel = Product.where(category: 'cidre_traditionnel')
    @digestifs = Product.where(category: 'digestif')
    @cafes_infusions = Product.where(category: 'cafe_infusion')
    @sodas_boissons = Product.where(category: 'soda_boisson')
    @vins = Product.where(category: 'vin')
  end
end
