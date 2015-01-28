class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :event
      t.integer :price
      t.references :user
      t.boolean :paid

      t.timestamps
    end
  end
end
