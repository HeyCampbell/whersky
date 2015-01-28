class CreateBlogTags < ActiveRecord::Migration
  def change
    create_table :blog_tags do |t|
      t.references :blog
      t.references :tag
    end
  end
end
