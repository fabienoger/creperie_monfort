class Product < ActiveRecord::Base
  validates :name, presence: {
    message: "Le nom du produit doit être renseigné."
  }
  validates :price, presence: {
    message: "Le prix du produit doit être renseigné."
  }
  validates :category, presence: {
    message: "La catégorie du produit doit être renseigné."
  }
end
