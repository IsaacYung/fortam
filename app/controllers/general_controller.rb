class GeneralController < ApplicationController
  def index
  end

  def contact
    @messenge = Message.new
    @messenge.name = 'Isaac'
    @messenge.email = 'isaaczoi@gmail.com'
    @messenge.message = 'Vai que é tua'

    ContactMailer.contact_message
  end

  def about
  end
end
