@javascript
Feature: manage plugins
    In order to enable and disable plugins
    As an admin user
    I need to be able to check which one are disabled

    Scenario: Check plugins included
        Given I have logged in as an administrator
        Given I am on "/lists/admin/?page=plugins"
        Then I should see "CaptchaPlugin"
        And I should see "CKEditorPlugin"
        And I should see "CommonPlugin"
        And I should see "inviteplugin"
        And I should see "SegmentPlugin"
        And I should see "subjectLinePlaceholdersPlugin"

    Scenario Outline: Check plugins enabled
        Given I have logged in as an administrator
        And I am on "/lists/admin/?page=plugins"
        And I follow "enabled"
        Then I should see "<Enabled Plugins>"
        Examples:
         | Enabled Plugins              |
         | CKEditorPlugin               |
         | subjectLinePlaceholdersPlugin|
    
    Scenario Outline: Check plugins disabled
        Given I have logged in as an administrator
        And I am on "/lists/admin/?page=plugins"
        And I follow "Disabled"
        Then I should see "<Disabled Plugins>"
        Examples:
         | Disabled Plugins             |
         | CaptchaPlugin                |
         | CommonPlugin                 |
         | inviteplugin                 |
         | SegmentPlugin                |

    Scenario: Install new Plugin
        Given I have logged in as an administrator
        And I am on "/lists/admin/?page=plugins"
        When I fill in "pluginurl" with "https://github.com/bramley/phplist-plugin-autoresponder/archive/master.zip"
        And I press "download"
        Then I should see "Plugin installed successfully"
        
    
        


    

       
