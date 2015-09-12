require_relative '../../app.rb'

SITE = '/wps/portal/home/rp/schedule/!ut/p/c5/04_SB8K8xLLM9MSSzPy8xBz9CP0os3gTi0C3MMdQbzNDM1NLA89gn6CQUGMXQwtTI6B8pFm8AQ7gaEBAt5d-VHpOfhLQnnCQzWbxzu6OHibmPgYG_kZhBgZGfqbBgQahwcYGnsYQeTw2-Xnk56bqF-RGVAYHpCsCAASSOf8!/dl3/d3/L2dJQSEvUUt3QS9ZQnZ3LzZfNDhRRlZBVUs2UEZMRDBJU1RDTEZIRTEwMTA!/'
DATE = '13.09.2015'
STATION_FROM = 'БЕРЕЗА'
STATION_TO = 'МИНСК'
NUMBER_OF_WAGON = 5

Given(/^I am on Belarus railway page$/) do
  visit SITE
end

Then(/^I will search for data$/) do
  fill_in 'viewns_7_48QFVAUK6P5060ISJLKGLD2007_:form1:textDepStat', with: STATION_FROM
  fill_in 'viewns_7_48QFVAUK6P5060ISJLKGLD2007_:form1:textArrStat', with: STATION_TO
  fill_in 'viewns_7_48QFVAUK6P5060ISJLKGLD2007_:form1:dob', with: DATE
  click_on 'Продолжить'
end

Then(/^I should see 'Маршрут следования'$/) do
  page.has_content?('БЕРЕЗА - МИНСК')
end

Then(/^I will click the necessary train$/) do
  # page.save_screenshot
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see number in the column 'Номер вагона'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
