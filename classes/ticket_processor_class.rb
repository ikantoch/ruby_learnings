require './email_client.rb'
require './ticket_printer.rb'

class CinemaTicket
  def initialize(movie_name, ticket_cost, screening_time)
    @movie_name = movie_name
    @ticket_cost = ticket_cost
    @screening_time = screening_time
  end

  def send_by_email(to)
    subject = "Your ticket to #{@movie_name}"
    from = 'no_reply@cinema.com'
    message = 'Have fun watching the movie'
    EmailClient.new.send_email(from, to, subject, message)
  end
end

class TheaterTicket
  def initialize(show_name, ticket_cost, start_time)
    @show_name = show_name
    @ticket_cost = ticket_cost
    @start_time = start_time
  end

  def send_by_email(to)
    subject = "Your ticket to #{@movie_name}"
    from = 'no_reply@theater.com'
    message = 'Enjoy spectacle'
    EmailClient.new.send_email(from, to, subject, message)
  end

  def print
    TicketPrinter.new.print_ticket(@show_name, @ticket_cost, @start_time)
  end
end

cinema_ticket = CinemaTicket.new('Titanic', 20, '18:00')
cinema_ticket.send_by_email('test@test.com')

theater_ticket = TheaterTicket.new('Titanic', 20, '18:00')
theater_ticket.print