# Address Book

1. Rails app using Bootstrap
2. Model: Contact with first name, last name, address, city, state, zip
3. Validations: correct characters (regex), all fields required, zip is a number
4. Views:
  - when you are on the index page for contacts, there is a button to add a contact
  - when you click on the button to add a contact, the add a new contact form shows in a bootstrap modal window
  - when you submit the form, the data is submitted via ajax to the rails app
  - if the contact is successfully added (or edited), the modal disappears and the contact is either added or updated in the list of contacts
  - if there is a validation error, the modal stays visible and the errors show next to the form fields in the modal window
