class ContactMailer < ApplicationMailer
  def contact_message
    mail(to: 'isaaczoi@gmail.com', subject: 'Bem vindo teste de email')
  end
end
