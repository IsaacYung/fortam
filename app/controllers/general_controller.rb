class GeneralController < ApplicationController
  def index
  end

  def contact
    @message = Message.new
  end

  def about
  end

  def work
    @work = Work.new
  end

  def work_create
    @work = Work.new(work_params)

    ContactMailer.work(@work, request, browser).deliver

    congratulation = 'Obrigado ' + @work.first_name + ', pelo interesse'
    if @work.save
      respond_to do |format|
        format.html { redirect_to work_us_url, notice: congratulation }
      end
    end
  end

  def create
    @message = Message.new(message_params)
    @message.name = @message.name.capitalize

    ContactMailer.contact(@message, request, browser).deliver

    congratulation = 'Obrigado ' + @message.name.partition(' ').first + ', mensagem enviada'
    respond_to do |format|
      format.html { redirect_to contact_url, notice: congratulation }
    end
  end

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end

  def work_params
    params.require(:work).permit(:first_name, :last_name, :height, :city, :work_area, :curriculum_path, :age, :email, :phone, :sex)
  end
end
