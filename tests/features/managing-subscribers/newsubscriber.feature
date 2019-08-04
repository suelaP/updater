Feature: Create a new subscriber
  In order to create a new subscriber
  As an admin user
  I must be able to save a new subscriber's details

  Scenario: Login and create a subscriber
    Given I am on "/lists/admin/"
    When I fill in "login" with a valid username
    And I fill in "password" with a valid password
    And I press "Continue"
    And I follow "Subscribers"
    And I follow "Search subscribers"
    And I follow "Add a subscriber"
    Then I should see "Email address"
    When I fill in "email" with an email address
    And I press "change"
    Then I should see "subscriber profile"
    Then I should see "Add to blacklist"
    And I follow "Search subscribers"
    Then I should see the email address I entered
