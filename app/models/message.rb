class Message < ActiveRecord::Base
  validates :name, presence: {
    message: "Le nom doit être renseigné."
  }
  validates :email, presence: {
    message: "L'email doit être renseigné."
  }
  validates :content, presence: {
    message: "Vous devez saisir un message."
  }
  validates :email, format: { with: /\A.+@.+\z/,
    message: "Saisissez une adresse e-mail valide." }
end
