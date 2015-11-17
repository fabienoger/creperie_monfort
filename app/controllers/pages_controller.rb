class PagesController < ApplicationController

  def book
    @booking = Booking.new
  end

  def booking
    @booking = Booking.new params.require(:booking).permit(:date, :number, :hour, :name, :phone, :email)
    puts "#{@booking.date.strftime('%d:%m:%Y')}".red
    @booking.ip = request.remote_ip
    puts "#{request.remote_ip}".blue
    if @booking.save
      UserMailer.booking(@booking).deliver_later
      puts "--------------------------------------".yellow
      puts "La réservation à bien été enregistrée.".green
      puts "--------------------------------------".yellow
      flash[:success] = "La réservation à bien été enregistrée."
      redirect_to "/reservez"
    else
      puts "---------------------------------------".yellow
      puts "La réservation n'a pas été enregistrée.".red
      puts "---------------------------------------".yellow
      flash[:error] = "La réservation n'a pas été enregistrée."
      render "book"
    end
  end

  def home
  end

  def contact
    @message = Message.new
  end

  def create
    @message = Message.new params.require(:message).permit(:name, :email, :content)
    if @message.save
      UserMailer.contact_form(@message).deliver_later
      flash[:success] = "L'email a bien été envoyé."
      redirect_to '/contact'
    else
      flash[:error] = "L'email n'a pas été envoyé."
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
