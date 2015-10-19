class PagesController < ApplicationController
  def home
  end

  def contact
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
