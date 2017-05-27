require 'spec_helper'
require 'rails_helper'
require './spec/support/utilities'

describe 'Static pages' do

  subject { page }

  shared_examples_for 'all static pages' do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe 'Home page' do
    before { visit root_path }
    let(:heading) { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like 'all static pages'
    it { should_not have_title('| Home') }
  end

  describe 'Help page' do
    before { visit help_path }
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like 'all static pages'
  end

  describe 'About page' do
    before { visit about_path }
    let(:heading) { 'About' }
    let(:page_title) { 'About' }

    it_should_behave_like 'all static pages'
  end

  describe 'Contacts page' do
    before { visit contacts_path }
    let(:heading) { 'Contacts' }
    let(:page_title) { 'Contacts' }

    it_should_behave_like 'all static pages'
  end

  describe 'Layout Page' do
    context 'it should have the right links from layout' do
      before { visit root_path }

      it 'to About' do
        within('footer') { click_link 'About' }
        expect(page).to have_title(full_title('About'))

        within('header') { click_link 'About' }
        expect(page).to have_title(full_title('About'))
      end

      it 'to Help' do
        within('header') { click_link 'Help' }
        expect(page).to have_title(full_title('Help'))
      end

      it 'to Contacts' do
        within('footer') { click_link 'Contact' }
        expect(page).to have_title(full_title('Contacts'))
      end

      it 'to Home' do
        within('header') { click_link 'Home' }
        expect(page).to have_title(full_title(''))
      end

      it 'to Sign up' do
        click_link 'Home'
        expect(page).to have_title(full_title(''))
      end
    end
  end
end
