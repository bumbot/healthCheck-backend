class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.integer :user_id
      t.integer :clinic_id
      t.date :appointment_date
      t.time :appointment_time

      t.timestamps
    end
  end
end
