@javascript
Feature: Navigate the app using the menu
  In order to access different application pages
  As an admin user
  I need to be able to view and navigate navigation menu links

  Scenario Outline: Use main menu navigation links
    Given I am on "/lists/admin/"
    When I fill in "login" with a valid username
    And I fill in "password" with a valid password
    And I press "Continue"
    Then I should see "<Pagename>"
    Examples:
      | Pagename                  |
      | dashboard                 |
      | subscribers               |
      | campaigns                 |
      | statistics                |
      | config                    |
     Then I should see "Recently Visited"
     Then I should see "logout"
     Then I should see "Dashboard"

    Scenario Outline: Browse Subscribers menu
     Given I am on "/lists/admin/"
     When I fill in "login" with a valid username
     And I fill in "password" with a valid password
     And I press "Continue"
     And I follow "Subscribers"
     Then I should see "<Innerpages>"
     Examples:
        | Innerpages                |
        | Search subscribers        |
        | Manage subscribers        |
        | Configure attributes      |
        | Subscriber lists          |
        | Import subscribers        |
        | Export subscribers        |
        | View bounces              |
        | View bounces per list     |
        | Suppression List          |

    Scenario Outline: Browse Campaigns menu
     Given I am on "/lists/admin/"
     When I fill in "login" with a valid username
     And I fill in "password" with a valid password
     And I press "Continue"
     And I follow "Campaigns"
     Then I should see "<Innerpages>"
     Examples:
        | Innerpages                |
        | Send a campaign           |
        | List of campaigns         |
        | Manage campaign templates |
    
    Scenario Outline: Browse Statistics menu
     Given I am on "/lists/admin/"
     When I fill in "login" with a valid username
     And I fill in "password" with a valid password
     And I press "Continue"
     And I follow "Statistics"
     Then I should see "<Innerpages>"
     Examples:
         | Innerpages                |
         | Statistics overview       |
         | View Opens                |
         | Campaign click statistics |
         | URL click statistics      |
         | Domain statistics         |

 
    Scenario Outline: Browse Config menu
     Given I am on "/lists/admin/"
     When I fill in "login" with a valid username
     And I fill in "password" with a valid password
     And I press "Continue"
     And I follow "Config"
     Then I should see "<Innerpages>"
     Examples:
         | Innerpages                         |
         | Checklist                          |
         | Settings                           |
         | Subscribe pages                    |
         | Categorise lists                   |
         | Manage Plugins                     |



   
