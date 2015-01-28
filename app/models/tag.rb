class Tag < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :blogs, :through => :blog_tags
  has_many :events, :through => :event_tags
end
