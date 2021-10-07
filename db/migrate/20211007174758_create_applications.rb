class CreateApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :applications do |t|
      t.string "position_title"
      t.boolean "applied", default: true, null: false
      t.boolean "rejected", default: false, null: false
      t.boolean "followed_up", default: false, null: false
      t.string "followed_up_info"
      t.boolean "linked_in_connected", default: false, null: false
      t.boolean "former_flatiron_alum", default: false, null: false
      t.string "remote_or"
      t.string "contact_name"
      t.string "contact_title"
      t.string "contact_info"
      t.date "date_applied"
      t.string "job_description"
      t.string "salary"
      t.integer "User_id", null: false
      t.integer "Company_id", null: false
      t.index ["Company_id"], name: "index_applications_on_Company_id"
      t.index ["User_id"], name: "index_applications_on_User_id"
      t.timestamps
    end
  end
end
