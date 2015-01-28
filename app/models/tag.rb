class Tag < ActiveRecord::Base
  validates_presence_of :name
  has_many :blogs, :though => :blog_tags
  has many :events, :though => :event_tags
end
