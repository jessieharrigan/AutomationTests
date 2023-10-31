Feature: Green Kart features
Scenario: Homepage is visible
  Given I navigate to the Green Kart homepage 
  Then I should see the Green Kart homepage 

Scenario: Searching for items
  Given I navigate to the Green Kart homepage
  And I should see the Green Kart homepage
  When I click the search bar
  And I search for cucumber
  Then I should see cucumber in the search results
  When I add cucumber to cart
  Then I should see cucumber in the cart
  When I click proceed to checkout
  Then I should see the checkout page
  When I click place order
  Then I should see the final page
  When I select country
  Then I should see the order confirmation page

