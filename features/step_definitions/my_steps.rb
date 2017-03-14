Given /^voy a la portada$/ do
  visit '/'
end

Then /^debo ver "(.*)"$/ do | text |
  last_response.body.should =~ /#{text}/m
end

When(/^presiono "(.*?)"$/) do |boton|
  click_button(boton)
end

