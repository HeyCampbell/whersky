class Ticket < ActiveRecord::Base
  validates_presence_of :event

  belongs_to :event
  belongs_to :user

end

