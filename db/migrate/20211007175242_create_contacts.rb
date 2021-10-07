class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.references :company, null: false, foreign_key: true
      t.string :title
      t.text :phone_email
      t.datetime :date_of_last_contact

      t.timestamps
    end
  end
end
