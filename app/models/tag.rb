class Tag < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :blog_tags
  has_many :blogs, :through => :blog_tags
  has_many  :event_tags
  has_many :events, :through => :event_tags

  def get_size
    size = self.blogs.count + self.events.count
    size/2.to_f
  end

  # def get_all
  #   self.blogs.each
end
