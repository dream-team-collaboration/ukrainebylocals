class ChangePriceInReservations < ActiveRecord::Migration[6.1]
  def change
    change_column :reservations, :price, :decimal
  end
end
