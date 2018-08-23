class AddEndDatetimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :end_datetime, :datetime
  end
end
