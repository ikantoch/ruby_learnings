require 'sendgrid-ruby'
require 'pry'

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

class CinemaTicket
    def initialize(movie_name, ticket_cost, screening_time)
      @movie_name = movie_name
      @ticket_cost = ticket_cost
      @screening_time = screening_time
    end

    def print
      puts @movie_name
      puts @screening_time
      puts "#{@ticket_cost}zł"
      puts seat_selection
    end


    def send_by_email(to)
      subject = "Your ticket to #{@movie_name}"
      from = 'no_reply@cinema.com'
      message = 'Have fun watching the movie'
      EmailClient.new.send_email(from, to, subject, message)
    end

  private
    def seat_selection
      rand 1..150
    end
end

cinema_ticket = CinemaTicket.new('Titanic', 20, '18:00')
cinema_ticket.print
cinema_ticket.send_by_email('test@test.com')
