class RenameColumnToResevations < ActiveRecord::Migration
  def change
    rename_column :reservations, :studio, :studio_id
  end
end
