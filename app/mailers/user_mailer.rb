class UserMailer < ApplicationMailer

  default from: 'creperie.montfort@gmail.com'

  def contact_form(message)
    @message = message
    mail(to: "fab.oger0@gmail.com", subject: "Contact form #{@message.name}")
  end
end
