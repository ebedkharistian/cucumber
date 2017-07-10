Given(/^I am on the Google homepage$/) do
    visit 'http://www.google.com'
end

Then(/^I will search for "(.*?)"$/) do |searchText|
    fill_in 'lst-ib', :with => searchText
    find('input#lst-ib').native.send_key :return 
end

Then(/^I should see "(.*?)"$/) do |expectedText|
    page.should have_content(expectedText)
end

Then(/^I will click the about link$/) do
    click_link('Tentang Kami')
end