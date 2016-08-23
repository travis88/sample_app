# require 'spec_helper'
require 'rails_helper'
require 'support/utilities'

describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit static_pages_home_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title(' | Home') }
  end

  describe "Help page" do
    before { visit static_pages_help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit static_pages_about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit static_pages_contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
