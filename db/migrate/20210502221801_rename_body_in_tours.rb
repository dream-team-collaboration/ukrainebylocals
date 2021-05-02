class RenameBodyInTours < ActiveRecord::Migration[6.1]
  def change
    rename_column :tours, :body, :description
  end
end
