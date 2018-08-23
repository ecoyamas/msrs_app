class RemoveFrameTo < ActiveRecord::Migration
  def change
    remove_column :reservations, :frame, :integer
  end
end
