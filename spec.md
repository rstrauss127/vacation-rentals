# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project

- [x] Include at least one has_many relationship
  - User has_many Listings

- [x] Include at least one belongs_to relationship
  - Listing belongs_to User

- [x] Include at least two has_many through relationships
  - User has_many Reservations through Listings
  - Listing has_many Users through Reservations

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
  - User has_many Reservations through Listings
  * Reservation has_many Users through Listings 

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user
  - Description, Title, bathrooms, bedrooms

- [x] Include reasonable validations
  - Reservations
    unique start_date
  - Users
      must have unique email
      must have password
  - Listings
      must have title
      must have bedrooms, numerically
      must have bathrooms, numerically
      must have description

- [x] Include a class level ActiveRecord scope method
  /start_date_before reservations#start_date_before - shows all reservations that occurred before todays date.

- [x] Include signup (how e.g. Devise)

- [x] Include login (how e.g. Devise)

- [x] Include logout (how e.g. Devise)

- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  - Facebook

- [x] Include nested resource show or index
  - listings/9/reservations *need to clean up view*

- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
  - listings/9/reservations/new

- [x] Include form display of validation errors
  - listings/new
  - reservation/new
Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
