When /^I fill out the quote request form with valid values$/ do
  within("#request-quote") do
    fill_in "Name", with: "Charlie Tuna"
    fill_in "Email", with: "charlie@tuna.com"
    fill_in "Phone", with: "8014661999"
    fill_in "Description", with: "I got lots of bugs"
    click_button "Submit My Quote"
  end
end

When /^I fill out the quote request form with invalid values$/ do
    within("#request-quote") do
    fill_in "Email", with: "charlie@tuna.com"
    fill_in "Description", with: "I got lots of bugs"
    click_button "Submit My Quote"
  end
end

Then /^I should see a succesful quote request message$/ do
  expect(page.body).to have_content "Thank you for you interest! We will contact you shortly."
end

Then /^I should see an unsuccesful quote request message$/ do
  expect(page.body).to have_content "We are sorry but something went wrong. Please try again."
end