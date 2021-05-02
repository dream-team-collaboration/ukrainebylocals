class AddCustomerReferencesToReservations < ActiveRecord::Migration[6.1]
  def change
    add_reference :reservations, :customer, null: false, foreign_key: true
  end
end
