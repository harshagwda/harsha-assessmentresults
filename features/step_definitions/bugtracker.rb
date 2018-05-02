# Given("I should be able to navigate to the Bugtracker page") do
#   @browser.navigate.to "https://bugtrackers.herokuapp.com"
# end

# When("I click on the Login Button") do
#   sleep 3
#   @browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input").click
#   sleep 5
# end

# When("I should get a Login pop-up") do
#   @browser.find_element(xpath: "//*[@id='sign_in']/div[3]/center").displayed?
#   sleep 3
# end

# When("I Enter valid Username and password") do
# sleep 3
#   @browser.find_element(id: 'inputUsername').send_keys "harsha"
# sleep 2
#   @browser.find_element(id: 'inputPassword').send_keys "123456"
# end

# When("I click on the submit button") do
#   sleep 3
#   @browser.find_element(name: 'commit').click
  
# end

# When("I should be redirected to the homepage") do
#   @browser.navigate.to "https://bugtrackers.herokuapp.com/issues"
#   sleep 3
# end

# When("I click on Create button") do
#   @browser.find_element(xpath: "//*[@id='create-button']/form/div/input").click
# end

# When("I enter all fields successfully") do
#   sleep 2
#   @browser.find_element(id: 'Issues3').send_keys "bugfinder"
#   sleep 2
#   @browser.find_element(id: 'issue_issue_type').click
#   sleep 2
#   @browser.find_element(xpath: '//div/form/div[2]/div[2]/div/select/option[2]').click
#   sleep 2
#   @browser.find_element(id: 'Description3').send_keys "Please Help to solve this Bug issue"
#   sleep 2
#   @browser.find_element(id: 'Comment3').send_keys "It should be fixed asap"
#   sleep 2
#   @browser.find_element(id: 'issue_status').click
#   sleep 2
#   @browser.find_element(xpath: '//div/form/div[2]/div[5]/div/select/option[1]').click
#   sleep 2
# end

# When("I click on Ok button") do
#   @browser.find_element(name: 'commit').click
# end

# Then("I should be able to view recent bug in issues page") do
#   @browser.find_element(id: 'panel_show').displayed?
#   sleep 3
# end

# Given("I click on Sign Out") do
#   sleep 3
#  p @browser.find_element(xpath: '//div/div[2]/ul/li[2]/form/div/input[2]').click
# end

# Then("I should be redirected to the webpage") do
#   @browser.navigate.to "https://bugtrackers.herokuapp.com/"
#   sleep 5
# end

Given("I am on Bugtracker Home page") do
  @browser.navigate.to "https://bugtrackers.herokuapp.com/"
  sleep 2
end

When("I Login with valid credentials") do
  @browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input").click
  sleep 3
  @browser.find_element(xpath: "//*[@id='sign_in']/div[3]/center").displayed?
  sleep 3
  @browser.find_element(id: 'inputUsername').send_keys "harsha"
  sleep 2
  @browser.find_element(id: 'inputPassword').send_keys "123456"
  sleep 2
  @browser.find_element(name: 'commit').click
end

Then("I should be redirected to homepage with a flash message {string}") do |var|
 txt = @browser.find_element(xpath: "//div[1]/div/div/p").text
 if var == txt
  puts "#{var}"
 else 
 raise "#{var} not found"
 end 
  sleep 3
end

Given("I am on dashboard page") do
  @browser.find_element(xpath: '//div/div[2]/ul/li[1]/img').displayed?
  sleep 3
end

When("I create bug with valid data") do
  @browser.find_element(xpath: "//*[@id='create-button']/form/div/input").click
  sleep 3
  @browser.find_element(xpath: "//div[2]/div/div/h4").displayed?
  sleep 5
  @browser.find_element(id: 'Issues3').send_keys "bugissue"
  sleep 2
  @browser.find_element(id: 'issue_issue_type').click
  sleep 2
  @browser.find_element(id: 'issue_issue_type').send_keys "Bugs"
  sleep 2
  @browser.find_element(id: 'Description3').send_keys "Please Help to solve this Bug issue"
  sleep 2
  @browser.find_element(id: 'Comment3').send_keys "It should be fixed asap"
  sleep 2
  @browser.find_element(id: 'issue_status').click
  sleep 2
  @browser.find_element(id: 'issue_status').send_keys "Close"
  sleep 2
  @browser.find_element(name: 'commit').click
  sleep 2
end

Then("I should see the bug which was created in the list") do
  sleep 3
  @browser.find_element(xpath: '//div[2]/ul/li[2]/form/div/input[2]')
  sleep 5
end

Given("I am back on dashboard page") do
  @browser.find_element(xpath: '//div/div[2]/ul/li[1]/span').displayed? 
end

When("I click on Sign-Out button") do
  @browser.find_element(xpath: '//div/div[2]/ul/li[2]/form/div/input[2]').click 
end

Then("I should see {string} flash message") do |var1|
  txt1 = @browser.find_element(xpath: '//div[1]/div/div/p').text
  if var1 = txt1
  puts "#{txt1}"
  else
  puts "#{txt1} not found"
  end 
  sleep 3
end
