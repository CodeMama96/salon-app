class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :name
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
