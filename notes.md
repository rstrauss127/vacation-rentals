# Step 1: Integrate Basic Theme to Asset Pipeline
[X]/ - see a stubbed out, non-dynamic, page with the theme.

# Step 2: Allow people to CRUD listings

[]/- ListsController
  #index
  -see all their listings
  -doubling as my #new action in that it is presenting the person with a form to create a list
  -Index all listings

-create a listings
-show a listing

I want people to be able to create listings for Rental Properties. Then they should be able to add available dates(vacations) to those listings. They should be able to navigate many listings and see availability(vacations) and details for each listings.

listing
  has many vacations

vacation
    belongs to a listing

# Step 3: Add features to a listing
  A Listing has many features and every feature belongs to a listing

  listings

  features
  id  description list_id
  1   Milk        2    
  2   Cookies     2

  POST /listing/:id/features
  Nested Resource - Features are nested in terms of URLs under their parent listing

  Does it impact my database? - need a featuress table - associated with a listing
  Does it impact my URLs?

# Step 4: Validations
  Validate that listings have a title
  Validate that features have a description

# Step 5: Add fields to features
  Does it change my db? - yes. need new migration file, Add column to features table.
    address:string

  What URLs do i need? none

# Step Later: Add State(available/unavailable) to a Listing  
  -Mark listings as available or unavailable
  what urls do i need and how might my databse change?
  - The idea of a listing being available/unavailable requires data
  -new form for updating the status of a listing => which means new url

  Anything that is going to change a lsiting should be a PUT request to /listings/:id

# Step 6: Add Reservations
A Reservation belongs_to a listing
a reservation has_many  Users, through listing(belongs_to many?)

user has many reservations through listings

listing has many reservations

form for new reservation should have 2 collection_select boxes, one for start_date and one for end_date

#Step 7: How are we going to show reservations?
  since a reservation really belongs to 2 users, the owner of the listing and the reservation maker, we need to classify users.
  -Create new resource Owner
    Only Owners can create new listings.
    -Add checkbox on signup page to specifcy if Owner or not.
  -Create new resource Guest
    A User becomes a guest when they create a reservation.

    user_table
      id  
    guest_table
      id  user_id listing_id length_of_stay
    owner_table
      user_id listing_id

  Next time: making nested index page  
