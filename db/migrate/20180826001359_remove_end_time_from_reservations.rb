class RemoveEndTimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :end_time, :time
  end
end
