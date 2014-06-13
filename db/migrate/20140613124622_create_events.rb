class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.text :location
      t.datetime :start_time
      t.datetime :end_time
      t.integer :min_volunteers
      t.integer :max_volunteers
      t.text :scheduled_text
      t.datetime :time_to_send_message

      t.timestamps
    end
  end
end
