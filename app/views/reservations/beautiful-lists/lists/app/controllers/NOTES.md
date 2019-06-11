#Step 1: Integrate basic theme to asset pipeline
[X] / - And see a stubbjed out, non-dynamic, page with the theme.

#Step 2: Allow people to CRUD lists (feature store)
ListsController
  #index
  -see all their lists
  -doubling as my #new action in that it is presenting the persn with a form to create a new lists
  / - Index all the lists...
  -create lists


-show a list

-i need a model
-i need a controller
-i should generate a resource

Does it impact the DB?
Does it impact my URLS? '/lists/1'

I want people tp be able to create lists. Then they should be able to add items to those lists. They should be able to navigate many lists and see each lists items.

lists
  has_many items

items
  belongs to lists

#Step 3: Add items to lists
- Make the items in a list real
  - a list has many items and every item belongs to a list

  lists
  2   Shopping List

  items
  id  description   list_id
  1   Milk          2
  1   Cookies       2


  CREATE ACTION for an ITEM in a LIST - What is the URL and HTTP verb that does that?

  -the form is already present in the list show page.
  -What URL does this form imply?

  POST list/:id/items #=>  describe which list we are adding an item to
  An item doesn't exist in our application outside of the context of a list

  Nested Resource - Items are nested in terms of URLS under their parent list.

  Does it impact the DB? - I need an items table- associated with a list.
  Does it impact my URLS? '/lists/1'

#Step 4 - add validations
Validate that lists have names
Validate the items have descriptions

#Step 5: I want to add state (complete/incomplete) to Items in a List
- Marking items as complete or incomplete

What URLS do i need and how might my database change?

-the idea of an item being complete or incomplete requires data.

-now forms for updating the status of an item - which means new URL

/lists/1/items
  PUT/PATCH  /lists/1/items/1 updating Item 1 in List 1
  PUT/PATCH /lists/:list_id/items/:id
HTML
<input class="toggle" type="checkbox">

I need that JS function to submit the form when you click the checkbox
$(function()) {
  $("input.toggle").on("change", function()){
    $(this).parents("form").trigger("submit")
  }
}

#Step 6: Deleting Items from a list

#Step whatever, Fix down arrow on Make a list  
