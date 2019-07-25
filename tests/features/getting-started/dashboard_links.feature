@javascript
Feature: Check Dashboard links
    In order to access different sections linked on the dashboard
    As an admin user
    I need to make sure the links work

Scenario: Check Getting Started
        Given I have logged in as an administrator
        Then I should be on "/lists/admin/"
        When I follow "Import subscribers" 
        Then I should be on "/lists/admin/?page=import"


