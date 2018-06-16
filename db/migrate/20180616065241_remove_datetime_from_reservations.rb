class RemoveDatetimeFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :start_date, :datetime
    remove_column :reservations, :end_date, :datetime
  end
end
