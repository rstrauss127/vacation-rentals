# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project

- [x] Include at least one has_many relationship
  - User has_many Listings

- [x] Include at least one belongs_to relationship
  - Listing belongs_to User

- [x] Include at least two has_many through relationships
  - (x has_many y through z; e.g. Recipe has_many Items through Ingredients)

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) user has many reservations through listings, reservations have many users through listings
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (bathrooms, bedrooms)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes) listings/9/reservations -need to clean up view
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
<section class="todoapp">

  <header class="header">
		<h1>Listings</h1>
    <%= form_for(@listing) do |f| %>
      <%= f.text_field :title, :class => "new-todo", :placeholder => (@listing.errors.full_messages_for(:title).first || "Enter a new list name") %>
    	<%= f.submit :style => "display: none" %>
    <% end %>
	</header>

  <section class="main">
    <ul class="todo-list">
      <% @listings.each do |list| %>
        <li>
          <div class="view">
            <label><a href="#"><%= link_to list.title, listing_path(list) %></a></label>
          </div>
        </li>
    <% end %>
    </ul>
  </section>
</section>

	<footer class="info">
    <%= link_to "Log Out", logout_path %>
	</footer>
