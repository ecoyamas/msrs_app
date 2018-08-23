class AddEndStartTimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :start_time, :time
  end
end
