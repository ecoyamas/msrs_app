class ChangeDatatypeUseTimeOfReservations < ActiveRecord::Migration
  def change
    change_column :reservations, :use_time, :integer
  end
end
