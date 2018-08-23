class RemoveDateToReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :date, :date
  end
end
