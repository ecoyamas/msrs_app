class AddUseTimeFromReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :use_time, :time
  end
end
