Feature: Find the free seat in the train

Scenario: Search for the website
  Given I am on Belarus railway page
  Then I will search for data
  Then I should see 'Маршрут следования'
  Then I will click the necessary train
  Then I should see number in the column 'Номер вагона'
