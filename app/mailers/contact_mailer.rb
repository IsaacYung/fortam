class ContactMailer < ApplicationMailer
  def contact(client, request_parms, browser_client)
    @browser_client = browser_client
    @client = client
    @request_parms = request_parms
    @date = Time.now.strftime("%d/%m/%Y %H:%M:%S %Z")
    mail(to: 'comercial@fortam.com.br', subject: 'Contato | ' + @client.name)
  end

  def work(worker, request_parms, browser_worker)
    @browser_worker = browser_worker
    @worker = worker
    @request_parms = request_parms
    @date = Time.now.strftime("%d/%m/%Y %H:%M:%S %Z")

    mail(to: 'rh@fortam.com.br', subject: 'Currículo | ' + @worker.first_name)
  end
end
