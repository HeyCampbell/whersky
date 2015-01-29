class CreateBlog < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.text :content
      t.string :title
      t.string :headline
      t.string :img_url
      t.references :blog_tag
      t.references :user

      t.timestamps
    end
  end
end
