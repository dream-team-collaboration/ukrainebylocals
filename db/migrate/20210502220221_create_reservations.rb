class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :title
      t.text :description
      t.datetime :date
      t.string :duration
      t.integer :price
      t.float :longitude
      t.float :latitude
      t.string :meeting_details

      t.timestamps
    end
  end
end
