class BlogTag < ActiveRecord::Base
  belongs_to :blog
  belongs_to :blog_tag
end
