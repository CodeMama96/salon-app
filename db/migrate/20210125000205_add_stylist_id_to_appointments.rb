class AddStylistIdToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :stylist_id, :integer
  end
end
