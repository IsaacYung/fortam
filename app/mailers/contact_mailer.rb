class ContactMailer < ApplicationMailer
  def contact(client, request_parms, browser)
    @browser = browser
    @client = client
    @request_parms = request_parms
    @date = Time.now.strftime("%d/%m/%Y %H:%M:%S %Z")
    @url = 'www.fortam.com.br'
    mail(to: 'comercial@fortam.com.br', subject: 'Fortam | ' + @client.name)
  end
end
