class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.date :event_date
      t.string :repeat

      t.timestamps
    end
  end
end
