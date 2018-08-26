class RemoveStartDatetimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :start_datetime, :datetime
  end
end
