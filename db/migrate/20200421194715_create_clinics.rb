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

      t.string :accept_walkin
      t.string :limited_access
      t.string :public_insurance
      t.string :medicaid
      t.string :medicare
      t.string :private_employer_insurance
      t.string :facility_type
      t.string :private_insurance

      t.boolean :child_special_needs
      t.boolean :elderly
      t.boolean :hiv
      t.boolean :homeless
      t.boolean :lgbt
      t.boolean :intellect_disabled
      t.boolean :physical_disabled
      t.boolean :mental_illness
      t.boolean :cardiology
      t.boolean :endocrinology
      t.boolean :general_surgery
      t.boolean :hiv_aids
      t.boolean :infectious_disease
      t.boolean :nephrology
      t.boolean :neurology
      t.boolean :obstetrics
      t.boolean :oncology
      t.boolean :opthalmology
      t.boolean :oral_surgery
      t.boolean :orthopedic
      t.boolean :gastroenterology
      t.boolean :pediatrics
      t.boolean :podiatry
      t.boolean :pulmonary
      t.boolean :rheumatology
      t.boolean :reproductive_health
      t.boolean :sti_test
      t.boolean :urology
      t.boolean :dentistry

      t.timestamps
    end
  end
end
