require 'spec_helper'
require 'rails_helper'

describe "Static pages" do

  @basic_title = 'Ruby on Rails Tutorial Sample App'

  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title("Ruby on Rails Tutorial Sample App | Home") }
  end

  describe "Help page" do
    before {visit help_path}
    it {should have_content('Vishenka')}
    it {should have_title("Ruby on Rails Tutorial Sample App | Help")}
  end


  describe "About page" do
    before {visit about_path}
    it {should have_content('About us')}
    it {should have_title("Ruby on Rails Tutorial Sample App | About")}
  end

  describe "Contacts page" do
    before {visit contacts_path}
    it {should have_content('Contacts')}
    it {should have_title("Ruby on Rails Tutorial Sample App | Contacts")}
  end

end
