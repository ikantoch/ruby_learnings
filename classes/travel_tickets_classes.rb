require './ticket_processor_class.rb'

class TrainTricket
  def initialize(ditection, ticket_cost, departure_time)
    @ditection = ditection
    @ticket_cost = ticket_cost
    @departure_time = departure_time
  end

  def send_by_email(to)
    subject = "Your train ticket to #{@ditectio}"
    from = 'no_reply@railway.com'
    message = 'Enjoy your trip with us'
    EmailClient.new.send_email(from, to, subject, message)
  end
end

train_ticket = TrainTricket.new("wawa", 20, "18:00")
train_ticket.send_by_email("ikantoch@zendesk.com")
