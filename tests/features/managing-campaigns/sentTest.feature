Feature: Send test email
    In order to send a test email
    As an admin user
    I need to be able to login and start a new campaign, and send a copy of the draft as test

    @javascript
    Scenario: Send test campaign when email is not on the database
        Given I have logged in as an administrator
        Given I follow "Campaigns"
        Given I follow "Send a campaign"
        When I follow "start a new campaign"
        Then I should see "Campaign subject"
        When I fill in "subject" with "This is a test subject"
        And I fill in "fromfield" with "From me me@mydomain.com"
        And I fill in "sendmethod" with "inputhere"
        And I fill in "message" with "some content"
        And I fill in "campaigntitle" with "This is the Title of the Campaign"
        And I fill in "testtarget" with "newemail6@domain.com"
        And I press "sendtest"
        Then I should see "Email address not found to send test message.:"
        And I should see "add"
        Given I follow "add"
        Then I should see "Email address added"
        When I press "sendtest"
        Then an email should be send to "newemail5@domain.com"
        And I should see "Sucess"

        



