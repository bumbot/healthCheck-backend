class CreateClinics < ActiveRecord::Migration[6.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :address_id
      t.string :phone_number
      t.string :website_url
      t.decimal :latitude
      t.decimal :longitude
      t.boolean :new_patients

      t.timestamps
    end
  end
end
