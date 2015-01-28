class CreateEventTags < ActiveRecord::Migration
  def change
    create_table :event_tags do |t|
      t.references :event
      t.references :tag
    end
  end
end
