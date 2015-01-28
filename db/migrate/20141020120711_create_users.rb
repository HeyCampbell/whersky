class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_digest
      t.string :img_url
      t.boolean :author
      t.boolean :admin
      t.boolean :premium
    end
  end
end
