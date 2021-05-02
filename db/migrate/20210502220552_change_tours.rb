class ChangeTours < ActiveRecord::Migration[6.1]
  def change
    change_table :tours do |t|
      t.datetime :date
      t.string :duration
      t.integer :price
      t.float :longitude
      t.float :latitude
      t.string :meeting_details
    end
  end
end
