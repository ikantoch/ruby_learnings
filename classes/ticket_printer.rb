class TicketPrinter
  def print_ticket(name, cost, time)
    puts name
    puts "#{cost} zł"
    puts time
    puts seat_selection
  end

  private
  def seat_selection
    rand 1..150
  end
end
