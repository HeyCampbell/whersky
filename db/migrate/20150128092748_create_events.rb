class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.string :description
      t.string :headline
      t.string :location
      t.integer :total_tickets
      t.references :event_tag
      t.string :img_url
      t.integer :price
      t.timestamps

    end
  end
end
