class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :place
      t.string :studio
      t.datetime :start_date
      t.datetime :end_date
      t.integer :user_id

      t.timestamps
    end
    add_index :reservations, [:user_id, :created_at]
  end
end
