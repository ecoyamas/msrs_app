class RemoveEndDatetimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :end_datetime, :datetime
  end
end
