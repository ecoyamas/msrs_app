class RemoveStartTimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :start_time, :time
  end
end
