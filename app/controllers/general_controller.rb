class GeneralController < ApplicationController
  def index
  end

  def contact
    @message = Message.new
  end

  def about
  end

  def create
    @message = Message.new(message_params)
    @message.name = @message.name.capitalize

    ContactMailer.contact(@message, request, browser).deliver

    congratulation = 'Obrigado ' + @message.name.partition(' ').first + ', mensagem enviada'
    respond_to do |format|
      format.html { redirect_to contatos_url, notice: congratulation }
    end
  end

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
