class ProviderConfirmation < ActionMailer::Base
  default from: "contato@suareforma.com.br"

  def confirmacao
    @usuario = "Armando Teste Email"
    @url     = "suareforma.com.br"

    mail(:to => 'piruk7@gmail.com', :subject => 'Enviado pelo site')
  end

end
