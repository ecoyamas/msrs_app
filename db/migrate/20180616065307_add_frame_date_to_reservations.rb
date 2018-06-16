class AddFrameDateToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :frame, :integer
    add_column :reservations, :date, :date
  end
end
