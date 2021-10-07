class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string "city_state"
      t.integer "company_size"
      t.string "industry"
      t.text "description"
      t.timestamps
    end
  end
end
