# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Clinic.destroy_all
Appointment.destroy_all

user1 = User.create(username: 'bum', password: 'hello')
user2 = User.create(username: 'dum', password: 'hello')
user3 = User.create(username: 'tum', password: 'hello')

clinic1 = Clinic.find_or_create_by(
    name: "Reston Hospital",
    address: "1850 Town Center Pkwy",
    city: "Reston",
    state: "Virginia", 
    zip: 20190,
    address_id: 1,
    phone_number: "(703) 689-9000",
    website_url: "restonhospital.com",
    latitude: nil,
    longitude: nil,
    new_patients: true,
    
    accept_walkin: "",
    limited_access: "",
    public_insurance: "",
    medicaid: "",
    medicare: "",
    private_employer_insurance: "",
    facility_type: "",
    private_insurance: "",

    child_special_needs: false,
    elderly: false,
    hiv: false,
    homeless: false,
    lgbt: false,
    intellect_disabled: false,
    physical_disabled: false,
    mental_illness: false,
    cardiology: true,
    endocrinology: false,
    gastroenterology: false,
    general_surgery: true,
    hiv_aids: true,
    infectious_disease: false,
    nephrology: false,
    neurology: false,
    obstetrics: false,
    oncology: false,
    opthalmology: false,
    oral_surgery: true,
    orthopedic: true,
    pediatrics: false,
    podiatry: false,
    pulmonary: false,
    rheumatology: false,
    reproductive_health: false,
    sti_test: false,
    urology: false,
    dentistry: false
)

clinic2 = Clinic.find_or_create_by(
    name: "Inova Fair Oaks Hospital",
    address: "3600 Joseph Siewick Dr",
    city: "Fairfax", state: "Virginia",
    zip: 22033,
    address_id: 2,
    phone_number: "(703) 391-3600",
    website_url: "inova.org",
    latitude: nil,
    longitude: nil,
    new_patients: true,

    accept_walkin: "",
    limited_access: "",
    public_insurance: "",
    medicaid: "",
    medicare: "",
    private_employer_insurance: "",
    facility_type: "",
    private_insurance: "",

    child_special_needs: false,
    elderly: false,
    hiv: false,
    homeless: false,
    lgbt: false,
    intellect_disabled: false,
    physical_disabled: false,
    mental_illness: false,
    cardiology: true,
    endocrinology: false,
    general_surgery: true,
    hiv_aids: true,
    infectious_disease: false,
    nephrology: false,
    neurology: false,
    obstetrics: false,
    oncology: false,
    opthalmology: false,
    oral_surgery: true,
    orthopedic: true,
    gastroenterology: false,
    pediatrics: false,
    podiatry: false,
    pulmonary: false,
    rheumatology: false,
    reproductive_health: false,
    sti_test: false,
    urology: false,
    dentistry: false
)

clinic3 = Clinic.find_or_create_by(
    name: "MinuteClinic",
    address: "1062 Elden St",
    city: "Herndon",
    state: "Virginia",
    zip: 20170,
    address_id: 3,
    phone_number: "(703) 471-7000",
    website_url: "cvs.com",
    latitude: nil,
    longitude: nil,
    new_patients: true,

    accept_walkin: "",
    limited_access: "",
    public_insurance: "",
    medicaid: "",
    medicare: "",
    private_employer_insurance: "",
    facility_type: "",
    private_insurance: "",

    child_special_needs: false,
    elderly: false,
    hiv: false,
    homeless: false,
    lgbt: false,
    intellect_disabled: false,
    physical_disabled: false,
    mental_illness: false,
    cardiology: true,
    endocrinology: false,
    general_surgery: true,
    hiv_aids: true,
    infectious_disease: false,
    nephrology: false,
    neurology: false,
    obstetrics: false,
    oncology: false,
    opthalmology: false,
    oral_surgery: true,
    orthopedic: true,
    gastroenterology: false,
    pediatrics: false,
    podiatry: false,
    pulmonary: false,
    rheumatology: false,
    reproductive_health: false,
    sti_test: false,
    urology: false,
    dentistry: false
)

appt1 = Appointment.find_or_create_by(
    user: user1,
    clinic: clinic1,
    appointment_date: 20200410,
    appointment_time: "08:00",
    reason_for_visit: "too much gas"
)

appt2 = Appointment.find_or_create_by(
    user: user2,
    clinic: clinic2,
    appointment_date: 20200415,
    appointment_time: "08:00",
    reason_for_visit: "my head hurts"
)

appt3 = Appointment.find_or_create_by(
    user: user3,
    clinic: clinic3,
    appointment_date: 20200320,
    appointment_time: "08:00",
    reason_for_visit: "i have covid sorry y'all"
)

appt4 = Appointment.find_or_create_by(
    user: user1,
    clinic: clinic2,
    appointment_date: 20200403,
    appointment_time: "08:00",
    reason_for_visit: "hi jeremy this is grandma"
)

appt5 = Appointment.find_or_create_by(
    user: user1,
    clinic: clinic3,
    appointment_date: 20200305,
    appointment_time: "08:00",
    reason_for_visit: "my toenail came off"
)