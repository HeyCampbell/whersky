class Blog < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :content


  belongs_to :user
  has_many :blog_tags
  has_many :tags, :through => :blog_tags
end
