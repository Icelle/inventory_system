As a food service employee
I want to receive inventory
So that it can be recorded that we have food items
Acceptance Criteria:

I must specify a title, description, and quantity of the food item
If I do not specify the required information, I am prompted to fix errors and to resubmit
If I specify the required information, my inventory entry is recorded.


rails g scaffold inventory title description quantity
