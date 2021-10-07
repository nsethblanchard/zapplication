class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "address1"
      t.string "address2"
      t.string "city"
      t.string "state"
      t.string "email"
      t.integer "age"
      t.boolean "currently_working"
      t.string "url_pic"
      t.string "job_goals"
      t.index ["email"], name: "unique_emails", unique: true
      t.timestamps
    end
  end
end
