class CreateTransports < ActiveRecord::Migration[6.1]
  def change
    create_table :transports do |t|
      t.string :name
      t.float :multiplier
      t.string :slug

      t.timestamps
    end
  end
end
