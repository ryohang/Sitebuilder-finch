
Given /^an url "([^"]*)"$/ do |url|
    Capybara.app_host = url
    visit ""
end


When /^user drag and drop "([^"]*)" box$/ do |modulename|
  srclocation=nil
    page.within_frame("website") do
        srclocation=page.driver.browser.find_element(:xpath,"//div[@id='secondary']/descendant::*/div[@class='bldr-container']").location
    end     
  targetlocation=page.driver.browser.find_element(:xpath,"//div[@data-moduletype='#{modulename}']").location
  
  offsetwidth=page.driver.browser.find_element(:xpath,"//div[@data-moduletype='#{modulename}']").style("width").to_i
  offsetheight=page.driver.browser.find_element(:xpath,"//div[@data-moduletype='#{modulename}']").style("height").to_i
  #puts offsetwidth
  #puts offsetheight
  #puts srclocation
  #puts targetlocation
  right=srclocation.x- targetlocation.x+offsetwidth
  down= srclocation.y - targetlocation.y+offsetheight
  #puts right
  #puts down
    page.driver.browser.find_element(:xpath,"//div[@data-moduletype='#{modulename}']/descendant::*/span").drag_and_drop_by(right,down)
  end

When /^the "([^"]*)" box should appear on the page$/ do |modulename|
  page.within_frame("website") do
      page.should have_xpath("//div[@id='secondary']/descendant::*/div[@class='bldr-container']/h3[@class='webs-#{modulename}']")
  end
end

When /^user edit "([^"]*)" box with "([^"]*)"$/ do |modulename,context|
  page.within_frame("website") do
      page.driver.browser.find_element(:xpath,"//div[@id='secondary']/descendant::*/div[@class='bldr-container']/h3[@class='webs-#{modulename}']").click
      page.driver.browser.find_element(:xpath,"//div[@id='secondary']/descendant::*/div[@class='bldr-container']/h3[@class='webs-#{modulename}']").send_keys context
  end 
end

Then /^user should see the "([^"]*)" appear in "([^"]*)" box$/ do |context,modulename|
  page.within_frame("website") do
    page.find(:xpath,"//div[@id='secondary']/descendant::*/div[@class='bldr-container']/h3[@class='webs-#{modulename}']").text.should include(context)
  end
end








