class RenameTitleColumnToReservations < ActiveRecord::Migration
  def change
    rename_column :reservations, :place, :store_id
  end
end
