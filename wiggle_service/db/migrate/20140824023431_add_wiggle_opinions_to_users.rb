class AddWiggleOpinionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :wiggle_opinions, :text
  end
end
