class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.time :time
      t.date :date
      t.integer :user_id
      t.integer :service_id

      t.timestamps
    end
  end
end
