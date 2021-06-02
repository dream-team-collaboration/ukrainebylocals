class AddTourRefToTourOptions < ActiveRecord::Migration[6.1]
  def change
    add_reference :tour_options, :tour, null: false, foreign_key: true
  end
end
