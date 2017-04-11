class MessageMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact.subject
  #

  default to: "misterstark.id@gmail.com"

  def contact(message)
    # @greeting = "Hi"
    #
    # mail to: "to@example.org"
    @body = message.body

    mail(from: message.email, subject: message.name, body: message.body)
  end
end
