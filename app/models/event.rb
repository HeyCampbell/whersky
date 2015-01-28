class Event < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :description

  has_many :tickets
  has_many :tags, :through => :event_tags


end
