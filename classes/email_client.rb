require 'sendgrid-ruby'

class EmailClient
  include SendGrid

  def send_email(from, to, subject, message)
    from = Email.new(email: from)
    to = Email.new(email: to)
    content = Content.new(type: 'text/plain', value: message)
    mail = Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV.fetch("SENDGRID_API_KEY"))
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end
end
