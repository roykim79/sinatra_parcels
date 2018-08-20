require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set :show_exceptions, false

describe 'the parcel path', :type => :feature do
  it 'processes the user entry and returns the cost to ship' do
    visit '/'
    fill_in 'length', :with => '2'
    fill_in 'width', :with => '2'
    fill_in 'height', :with => '2'
    fill_in 'weight', :with => '2'
    click_button 'Get shipping cost'
    expect(page).to have_content '$2.50'
  end

  it 'processes the user entry and returns the cost to ship' do
    visit '/'
    fill_in 'length', :with => '2'
    fill_in 'width', :with => '2'
    fill_in 'height', :with => '2'
    fill_in 'weight', :with => '20'
    click_button 'Get shipping cost'
    expect(page).to have_content '$25.00'
  end
end
