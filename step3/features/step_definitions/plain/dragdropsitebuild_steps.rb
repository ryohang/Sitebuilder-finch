
Given /^an url "([^"]*)"$/ do |url|
    Capybara.app_host = url
    visit ""
    @Sitebuilder=Sitebuilderfinch.new(Capybara.current_session)
    #website is the iframe name of droppable area
    @droppableiframe="website"
end

When /^user drag and drop "([^"]*)" box$/ do |modulename|
    @Sitebuilder.dragelement_into_iframe(modulename,@droppableiframe)
  end

When /^the "([^"]*)" box should appear on the page$/ do |modulename|
   @Sitebuilder.assertdroppedelement(modulename,@droppableiframe)
end

When /^user edit "([^"]*)" box with "([^"]*)"$/ do |modulename,context|
  @Sitebuilder.editText(modulename,context,@droppableiframe)
end

Then /^user should see the "([^"]*)" appear in "([^"]*)" box$/ do |context,modulename|
  @Sitebuilder.assertnewText(modulename,context,@droppableiframe)
end








