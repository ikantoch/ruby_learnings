class CinemaTicketsProcessor
  attr_accessor :movie_name, :ticket_cost, :screening_time

  def initialize(movie_name, ticket_cost, screening_time)
    @movie_name = movie_name
    @ticket_cost = ticket_cost
    @screening_time = screening_time
  end

  def ticket_printer
    puts @movie_name
    puts @screening_time
    puts @ticket_cost
    puts seat_selection
  end

  private
    def seat_selection
      rand 1..150
    end
end

cinema_ticket = CinemaTicketsProcessor.new('Titanic', '20 zł', '18:00')
cinema_ticket.ticket_printer
