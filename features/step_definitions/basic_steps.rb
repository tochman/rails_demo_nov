When(/^I am on the landing page$/) do
  visit root_path
end

Given(/^the following articles exists$/) do |table|
  table.hashes.each do |hash|
    Article.create!(hash)
  end
end

Given(/^I fill in "([^"]*)" with "([^"]*)" for article "([^"]*)"$/) do |field, content, article|
  article = Article.find_by(title: article)
  within "#article_#{article.id}" do
    fill_in field, with: content
  end
end

Given(/^I click "([^"]*)"$/) do |element|
  scope = @scope || 'body'
  within scope do
    click_link_or_button element
  end
end

Given(/^I focus on article "([^"]*)"$/) do |article|
  article = Article.find_by(title: article)
  @scope = "#article_#{article.id}"
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  scope = @scope || 'body'
  within scope do
    fill_in field, with: content
  end
end

Then(/^show me the page$/) do
  save_and_open_page
end

