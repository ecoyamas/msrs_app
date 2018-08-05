class ChangeDatatypeStoreIdOfReservations < ActiveRecord::Migration
  def change
    change_column :reservations, :store_id, :integer
  end
end
