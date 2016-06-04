class GeneralController < ApplicationController
  def index
  end

  def contact
    @message = Message.new
  end

  def about
  end
end
