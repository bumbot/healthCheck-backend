class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :clinic_id
      t.date :appointment_date
      t.string :appointment_time
      t.string :reason_for_visit

      t.timestamps
    end
  end
end
