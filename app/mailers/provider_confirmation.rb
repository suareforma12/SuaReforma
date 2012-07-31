# *-* encoding: UTF-8 *-*
class ProviderConfirmation < ActionMailer::Base
  default from: "contato@suareforma.com.br"

  def confirmacao(provider)
    @usuario = provider.name

    mail(:to => provider.email, :subject => 'Confirmação Sua Reforma')
  end

end
