require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "creating a Contact" do
    visit contacts_url
    click_on "New Contact"

    fill_in "Company", with: @contact.company_id
    fill_in "Date of last contact", with: @contact.date_of_last_contact
    fill_in "Name", with: @contact.name
    fill_in "Phone email", with: @contact.phone_email
    fill_in "Title", with: @contact.title
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit contacts_url
    click_on "Edit", match: :first

    fill_in "Company", with: @contact.company_id
    fill_in "Date of last contact", with: @contact.date_of_last_contact
    fill_in "Name", with: @contact.name
    fill_in "Phone email", with: @contact.phone_email
    fill_in "Title", with: @contact.title
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
