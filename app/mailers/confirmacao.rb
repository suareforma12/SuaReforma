class Confirmacao < ActionMailer::Base
  default from: "contato@suareforma.com.br"

  def welcome(email)
	mail(
		:to	=>	email
		:subject => "Confirmação Sua Reforma",
		:template_path => 'confirmacao',
		:template_name => 'confirma'
	)
  end
end