class CreateJourneys < ActiveRecord::Migration[6.1]
  def change
    create_table :journeys do |t|
      t.references :user, null: true, foreign_key: true
      t.integer :distance
      t.float :result_walk
      t.float :result_train
      t.float :result_electrical_car
      t.float :result_bus
      t.float :result_plane
      t.float :result_car

      t.timestamps
    end
  end
end
