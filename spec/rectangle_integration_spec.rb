require('capybara/rspec')
require('./app')
require('pry')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the square path', {:type => :feature}) do
  it('will process the users input') do
    visit('/')
    fill_in("length", :with => 30)
    fill_in("width", :with => 30)
    click_button("Find your result")
    expect(page).to have_content("square")
    expect(page).to have_content("27000")
  end
end
