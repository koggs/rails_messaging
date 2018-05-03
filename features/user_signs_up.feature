Feature: User signs up
  As a User
  inorder to use Mailboxer
  I have to have an account

  Scenario: User can sign up
    Given I visit the site
    When I click "Sign up"
    And I fill in "Name" with "Agnes"
    And I fill in "Email" with "agnes@test.com"
    And I fill in "Password" with "12345678"
    And I fill in "Password confirmation" with "12345678"
    And I click "Create"
    Then I should see "Welcome! You have signed up successfully"