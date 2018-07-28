class ChangePlaceToReservations < ActiveRecord::Migration
  def change
    change_column :reservations, :place, :string
  end
end
