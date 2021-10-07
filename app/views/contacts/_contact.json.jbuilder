json.extract! contact, :id, :name, :company_id, :title, :phone_email, :date_of_last_contact, :created_at, :updated_at
json.url contact_url(contact, format: :json)
