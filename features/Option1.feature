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

