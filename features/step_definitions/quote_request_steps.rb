Given /^"(.*?)" is signed in$/ do |email|
  user = User.find_by(email: email)
  sign_in(user)
end

When /^I fill out the quote request form with valid values$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I submit the form$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a succesful quote request message$/ do
  pending # express the regexp above with the code you wish you had
end