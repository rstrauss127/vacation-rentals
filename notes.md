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

  items
  id  description list_id
  1   Milk        2    
  2   Cookies     2

  POST /listing/:id/features
  Nested Resource - Features are nested in terms of URLs under their parent listing
  
  Does it impact my database? - need a featuress table - associated with a listing
  Does it impact my URLs?


#Step whatever fix css
