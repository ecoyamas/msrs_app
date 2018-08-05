class ChangeDatatypeStudioIdOfReservations < ActiveRecord::Migration
  def change
    change_column :reservations, :studio_id, :integer
  end
end
