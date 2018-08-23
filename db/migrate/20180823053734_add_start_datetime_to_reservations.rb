class AddStartDatetimeToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :start_datetime, :datetime
  end
end
