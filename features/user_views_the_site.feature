Feature: User views the site
    As a User
    In order to view the site
    I would like to see an index page

    Scenario: User can view the site
      Given I visit the site
      Then I should see "CA Mailboxer"
      And I should see "Craft Academy Mailboxer"