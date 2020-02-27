# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - Ruby on Rails was sued for thi project.
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - User has_many Favorites
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - Favorites belong_to User
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - User has_many Stores, through Favorites
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) - User has_many Stores, through Favorites & Store has_many Users, through Favorites
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - Users have the ability to add a category to their favorites.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - Users have multiple validations. To prevent duplicates, user's email must be unique. Also, the presence of an email and password is required. Emails must also be in an email format. Ratings validate the score  is between 1 and 5.
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Stores have a class method to get avergae rating from all users that provided a rating for the store. (@store.overall_rating) Every store will show their overall_rating URL: /stores/:id
- [x] Include signup (how e.g. Devise) - Users can signup
- [x] Include login (how e.g. Devise) - Users can login
- [x] Include logout (how e.g. Devise) - Users can logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Users can sign in with Facebook
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - Ratings index view is nested through stores URL stores/:id/ratings
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) URL stores/:id/ratings/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - Users will see an error if having an issue when trying to login

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate