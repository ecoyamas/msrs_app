class ChangeDatatypePlaceOfReservations < ActiveRecord::Migration
  def change
    change_column :reservations, :place, :integer
  end
end
