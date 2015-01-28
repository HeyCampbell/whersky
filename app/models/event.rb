class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description


  has_many :tickets
  has_many :event_tags
  has_many :tags, :through => :event_tags

  def print_tix
    self.total_tickets.times do
      Ticket.create(event: self, paid: false)
    end
  end

  def tix_left
    self.tickets.where(paid: false).count
  end
end
