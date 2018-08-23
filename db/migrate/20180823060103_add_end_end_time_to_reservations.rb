class AddEndEndTimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :end_time, :time
  end
end
