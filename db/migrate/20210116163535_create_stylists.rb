class CreateStylists < ActiveRecord::Migration[6.1]
  def change
    create_table :stylists do |t|
      t.string :name
      t.datetime :availability

      t.timestamps
    end
  end
end
