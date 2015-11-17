class Booking < ActiveRecord::Base
  validates :name, presence: {
    message: "Le nom doit être renseigné."
  }
  validates :email, presence: {
    message: "L'email doit être renseigné."
  }
  validates :email, format: { with: /\A.+@.+\z/,
    message: "Saisissez une adresse e-mail valide."
  }
  validates :number, presence: {
    message: "Vous devez saisir le nombre de personnes."
  }
  validates :date, presence: {
    message: "Vous devez saisir une date de réservation."
  }
  validates :hour, presence: {
    message: "Vous devez saisir une heure de réservation."
  }
  validates :phone, presence: {
    message: "Vous devez saisir un numéro de téléphone."
  }
  validates :phone, format: { with: /\d[0-9]\)*\z/,
    message: "Saisissez un numéro de téléphone valide."
  }
end
