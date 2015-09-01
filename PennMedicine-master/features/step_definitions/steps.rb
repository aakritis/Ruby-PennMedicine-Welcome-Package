Given(/^I'm on the user creation page$/) do
  visit(new_user_registration_path)
end

When(/^I add a new user$/) do
  fill_in 'First name', with: "Dushan"
  fill_in 'Last name', with: "Garg"
  fill_in 'Gender', with: "Male"
  fill_in 'Email', with: "dushan@abc.com"
  fill_in 'Password', with: "12345678"
  fill_in 'Password confirmation', with: "12345678"
  click_button 'Sign up'
end

Then(/^I should be able to see the first website page$/) do
  assert page.has_content?('Logged in as')
  # puts page.body
end

When(/^I add a new user without an email$/) do
  fill_in 'First name', :with => "Dushan"
  fill_in 'Last name', :with => "Garg"
  fill_in 'Gender', :with => "Male"
  fill_in 'Password', :with => "12345678"
  fill_in 'Password confirmation', :with => "12345678"
  click_button 'Sign up'
end 

Then(/^I should see some errors on the page$/) do
  # assert page.has_css?('div.error_explanation')
  assert page.has_content?('prohibited this user from being saved');
  # puts page.body
end

When(/^I add a new user without a password$/) do
  fill_in 'First name', :with => "Dushan"
  fill_in 'Last name', :with => "Garg"
  fill_in 'Gender', :with => "Male"
  fill_in 'Email', :with => "dushan@abc.com"
  click_button 'Sign up'
end

# login with existing user to test cucumber
Given(/^I'm on the question creation page$/) do
  # visit(new_questionnaire_path)
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/questionnaires/new'
  # puts page.body
  # visit(new_questionnaire_path)
  # click_button 'New Questionnaire'
  # find(:href,'/questionnaires/new').click
  # visit(new_questionnaire_path)
end

When(/^I add a new question$/) do
  # puts page.body
  fill_in 'Question', :with => "Hi. Can you share medicine details ?"
  click_button 'Create Questionnaire'
end

Then(/^I should be able to see the new questionnaire's page$/) do
    assert page.has_content?("Questionnaire was successfully created")
end

When(/^I add a new question without a question$/) do
  click_button 'Create Questionnaire'
end

Then(/^I should see some errors on the questionnaire's page$/) do
    assert page.has_content?("error prohibited this questionnaire from being saved")
end

Given(/^I'm on the blood count record page$/) do
  # visit(new_questionnaire_path)
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/blood_count_records/new'
end

When(/^I add all details$/) do
  fill_in 'Day', :with => "Tuesday"
  fill_in 'Wbc', :with => "1"
  fill_in 'Anc', :with => "1"
  fill_in 'Hgb', :with => "1"
  fill_in 'Plt', :with => "1"
  fill_in 'Transfusions', :with => "1"
  click_button 'Create Blood count record'
end

Then(/^I should be able to see the blood count record$/) do
  assert page.has_content?("Blood count record was successfully created.")
end

When(/^I add all details except WBC count$/) do
  fill_in 'Day', :with => "Tuesday"
  fill_in 'Anc', :with => "1"
  fill_in 'Hgb', :with => "1"
  fill_in 'Plt', :with => "1"
  fill_in 'Transfusions', :with => "1"
  click_button 'Create Blood count record'
end

When(/^I add all details except ANC count$/) do
  fill_in 'Day', :with => "Tuesday"
  fill_in 'Wbc', :with => "1"
  fill_in 'Hgb', :with => "1"
  fill_in 'Plt', :with => "1"
  fill_in 'Transfusions', :with => "1"
  click_button 'Create Blood count record'
end


Then(/^I should see some errors on the blood count page$/) do
  assert page.has_content?("error prohibited this blood_count_record from being saved")
end

Then(/^I should see multiple errors on the blood count page$/) do
  assert page.has_content?("errors prohibited this blood_count_record from being saved")
end


When(/^I add all details except Plt count$/) do
  fill_in 'Day', :with => "Tuesday"
  fill_in 'Anc', :with => "1"
  fill_in 'Hgb', :with => "1"
  fill_in 'Wbc', :with => "1"
  fill_in 'Transfusions', :with => "1"
  click_button 'Create Blood count record'
end

When(/^I add all details except transfusions count$/) do
  fill_in 'Day', :with => "Tuesday"
  fill_in 'Anc', :with => "1"
  fill_in 'Hgb', :with => "1"
  fill_in 'Wbc', :with => "1"
  fill_in 'Plt', :with => "1"
  click_button 'Create Blood count record'
end

When(/^I add no details$/) do
  click_button 'Create Blood count record'
end

Given(/^I'm logged in to the application$/) do
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/welcome/info'
end

When(/^I click on logout button$/) do
  click_link 'Logout'
end

Then(/^I should be able to see the login page again$/) do
  assert page.has_content?("You need to sign in or sign up before continuing.")
end
Given(/^I'm on the questionnaires page$/) do
  # visit(new_questionnaire_path)
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/questionnaires/new'
  question = "Hi. First Set of Details ?"
  fill_in 'Question', :with => "Hi. First Set of Details ?"
  Questionnaire.new(:question => question).save!
  click_button 'Create Questionnaire'
  visit '/questionnaires/1/edit'
end

When(/^I update an existing record$/) do
  fill_in 'Question', :with => "Hi. Can you share medicine details ?"
  click_button 'Update Questionnaire'
end

Then(/^I should be able to see the updated details$/) do
  assert page.has_content?("Questionnaire was successfully updated.")
end

Given(/^I'm on the blood count all record display page$/) do
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/blood_count_records/new'
  transfusions = "1"
  #fill_in 'Date', :with => "2015-05-08"
  fill_in 'Day', :with => "Tuesday"
  fill_in 'Wbc', :with => "1"
  fill_in 'Anc', :with => "1"
  fill_in 'Hgb', :with => "1"
  fill_in 'Plt', :with => "1"
  fill_in 'Transfusions', :with => "1"
  BloodCountRecord.new(:date => "2015-05-08", :day => "Tuesday", :wbc => "1", :anc => "1", :hgb => "1", :plt => "1", :transfusions => "1").save!
  click_button 'Create Blood count record'
  visit '/blood_count_records/1/edit'
end

When(/^I update blood count record$/) do
    fill_in 'Transfusions', :with => "100"
    click_button "Update Blood count record"
end

Then(/^I should be able to see the updated blood count details$/) do
  assert page.has_content?("Blood count record was successfully updated.")
end

Given(/^I'm on the appointment record page$/) do
  # visit(new_questionnaire_path)
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/calendars/new'
end

When(/^I add all appointment details$/) do
  fill_in 'Title', :with => "Testing"
  fill_in 'Description', :with => "Testing 1 2 3"
  click_button 'Create Calendar'
end

Then(/^I should be able to see the appointment record$/) do
  assert page.has_content?("Calendar was successfully created.")
end

Given(/^I'm on the appointment display page$/) do
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/calendars/new'
  fill_in 'Title', :with => "Testing"
  fill_in 'Description', :with => "Testing 1 2 3"
  click_button 'Create Calendar'
  Calendar.new(:title => "Testing", :description => "Testing 1 2 3").save!
  visit '/calendars/1/edit'
end

When(/^I update an existing appointment$/) do
  fill_in 'Title', :with => "Testing"
  fill_in 'Description', :with => "Testing 5 6 7"
  click_button 'Update Calendar'
end

Then(/^I should be able to see the updated appointment details$/) do
  assert page.has_content?("Calendar was successfully updated.")
end

Given(/^I'm on the login page$/) do
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
end

When(/^I open questionnaire page$/) do
  visit '/questionnaires'
end

Then(/^I should be able to see the current details$/) do
  assert page.has_content?("All your questions")
end

When(/^I update an existing record incorrectly$/) do
  fill_in 'Question', :with => ""
  click_button 'Update Questionnaire'
end

Given(/^I'm on the questionnaires main page$/) do
  # visit(new_questionnaire_path)
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/questionnaires/new'
  question = "Hi. First Set of Details ?"
  fill_in 'Question', :with => "Hi. First Set of Details ?"
  Questionnaire.new(:question => question).save!
  click_button 'Create Questionnaire'
  visit '/questionnaires'
end


When(/^I delete an existing record$/) do
  #click_button 'Destroy'
  page.all(:link,"Destroy")[0].click
end

Then(/^I should see some confirmation on deletion$/) do
  int windowCount = driver.getWindowHandles().size();
  assertEquals(windowCount,2)
end

When(/^I open Calendar page$/) do
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/calendars/new'
  fill_in 'Title', :with => "Testing"
  fill_in 'Description', :with => "Testing 1 2 3"
  click_button 'Create Calendar'
  Calendar.new(:title => "Testing", :description => "Testing 1 2 3").save!
  visit '/calendars'
end

Then(/^I should be able to see the current calendar details$/) do
  assert page.has_content?("Listing Caendars")
end

When(/^I open Blood Count page$/) do
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/blood_count_records/new'
  transfusions = "1"
  #fill_in 'Date', :with => "2015-05-08"
  fill_in 'Day', :with => "Tuesday"
  fill_in 'Wbc', :with => "1"
  fill_in 'Anc', :with => "1"
  fill_in 'Hgb', :with => "1"
  fill_in 'Plt', :with => "1"
  fill_in 'Transfusions', :with => "1"
  BloodCountRecord.new(:date => "2015-05-08", :day => "Tuesday", :wbc => "1", :anc => "1", :hgb => "1", :plt => "1", :transfusions => "1").save!
  click_button 'Create Blood count record'
  visit '/blood_count_records'
end

Then(/^I should be able to see the blood count details$/) do
  assert page.has_content?("Listing Blood Count Records")
end

When(/^I update blood count record incorrectly$/) do
  fill_in 'Anc', :with => ""
  click_button "Update Blood count record"
end

Then(/^I should see some errors on the blood count update page$/) do
  assert page.has_content?("error prohibited this blood_count_record from being saved")
end

Given(/^I'm on the appointment record display page$/) do
  visit '/users/sign_in'
  firstname = "dushan"
  lastname = "garg"
  gender = "male"
  email = "chaitanya2537@gmail.com"
  password = "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  User.new(:email => email, :password => password).save!
  fill_in 'Email', with: "chaitanya2537@gmail.com"
  fill_in 'Password', with: "$2a$10$mDaEAH3xua7NOq0CAB2FS.VdF25ITdV6VnNio4yKEOL..."
  click_button 'Log in'
  visit '/calendars/new'
end

When(/^I add all appointment details without title$/) do
  fill_in 'Description', :with => "Testing 1 2 3"
  click_button 'Create Calendar'
end

Then(/^I should see errors on appointment page$/) do
  assert page.has_content?("error prohibited this blood_count_record from being saved")
end
