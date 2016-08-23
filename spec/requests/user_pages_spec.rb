require 'rails_helper'
require 'support/utilities'

RSpec.describe "UserPages", type: :request do
  subject { page }

  describe "Sign Up page" do
    before { visit user_new_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end
