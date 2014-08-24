class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :global_id
      t.integer :favorite_wiggle_id

      t.timestamps
    end
  end
end
