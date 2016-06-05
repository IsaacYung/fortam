class GeneralController < ApplicationController
  def index
    expires_in 10.minutes, :public => true
  end

  def contact
    @message = Message.new
    expires_in 10.minutes, :public => true
  end

  def about
    expires_in 10.minutes, :public => true
  end
end
