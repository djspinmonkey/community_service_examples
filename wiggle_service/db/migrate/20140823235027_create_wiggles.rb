class CreateWiggles < ActiveRecord::Migration
  def change
    create_table :wiggles do |t|
      t.string :name
      t.integer :owner_id

      t.timestamps
    end
  end
end
