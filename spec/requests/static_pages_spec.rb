require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  @basic_title = 'Ruby on Rails Tutorial Sample App'

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it 'должен быть заголовок Ruby on Rails Tutorial Sample App | Home' do
      visit '/static_pages/home'
      expect(page).to have_title(" #{@basic_title} | Home")
    end
  end
  describe "Help page" do

    it "should have the content 'Vishenka'" do
      visit '/static_pages/help'
      expect(page).to have_content('Vishenka')
    end

    it 'должен быть заголовок Ruby on Rails Tutorial Sample App | Help' do
      visit '/static_pages/help'
      expect(page).to have_title(" #{@basic_title} | Help")
    end

  end

  describe "About page" do

  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    expect(page).to have_content('About Us')
  end

  it 'должен быть заголовок Ruby on Rails Tutorial Sample App | About' do
    visit '/static_pages/about'
    expect(page).to have_title(" #{@basic_title} | About")
  end
end

end
