class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string "name"
      t.integer "company_id", null: false
      t.string "title"
      t.text "phone_email"
      t.datetime "date_of_last_contact"
      t.index ["company_id"], name: "index_contacts_on_company_id"
      t.timestamps
    end
  end
end
