class GeneralController < ApplicationController
  def index
  end

  def contact
    @messenge = Message.new

    ContactMailer.contact_message
  end

  def about
  end
end
