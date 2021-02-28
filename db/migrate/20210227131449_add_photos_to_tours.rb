class AddPhotosToTours < ActiveRecord::Migration[6.1]
  def change
    add_column :tours, :photos, :json
  end
end
