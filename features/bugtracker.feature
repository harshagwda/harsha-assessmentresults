@Bugtracker
Feature: As a user I should be able to Login and Creat a Bug issue

@Webpage
Scenario:
Given I should be able to navigate to the Bugtracker page
When I click on the Login Button
And I should get a Login pop-up
And I Enter valid Username and password
And I click on the submit button
And I should be redirected to the homepage
And I click on Create button
And I enter all fields successfully
And I click on Ok button
Then I should be able to view recent bug in issues page

@Logout
Scenario:
Given I click on Sign Out
Then I should be redirected to the webpage
