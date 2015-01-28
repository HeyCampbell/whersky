class CreateBlog < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :content
      t.string :title
      t.string :headline
      t.references :blog_tags
      t.references :user

      t.timestamps
    end
  end
end
