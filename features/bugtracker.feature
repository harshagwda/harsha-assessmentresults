# @Bugtracker
# Feature: As a user I should be able to Login and Creat a Bug issue

# @Webpage
# Scenario:
# Given I should be able to navigate to the Bugtracker page
# When I click on the Login Button
# And I should get a Login pop-up
# And I Enter valid Username and password
# And I click on the submit button
# And I should be redirected to the homepage
# And I click on Create button
# And I enter all fields successfully
# And I click on Ok button
# Then I should be able to view recent bug in issues page

# @Logout
# Scenario:
# Given I click on Sign Out
# Then I should be redirected to the webpage


@Create_bug
Feature: As and End User
I should be able to Login to the Homepage 
So I should be able Create a Bug

@Smoke_Login
Scenario: Trying to Login with valid credentials
Given I am on Bugtracker Home page
When I Login with valid credentials
Then I should be redirected to homepage with a flash message "Signed in Successfully"

@Smoke_create_bug
Scenario: Trying to create a bug with valid data
Given I am on dashboard page
When I create bug with valid data
Then I should see the bug which was created in the list

@Sign_out
Scenario: Sign-out of the application
Given I am back on dashboard page
When I click on Sign-Out button
Then I should see "Logged out!" flash message

