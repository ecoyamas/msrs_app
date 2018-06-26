class CreateStudios < ActiveRecord::Migration
  def change
    create_table :studios do |t|
      t.string :studio_name
      t.integer :store_id

      t.timestamps
    end
  end
end
