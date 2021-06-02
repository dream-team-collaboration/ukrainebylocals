class CreateTourOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :tour_options do |t|
      t.string :language
      t.time :start_time_1
      t.time :start_time_2
      t.time :start_time_3
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday
      t.boolean :group
      t.boolean :private

      t.timestamps
    end
  end
end
