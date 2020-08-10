# This pulls in the config from spec/rails_helper.rb
# that's needed in order for the test to run.
require 'rails_helper'

RSpec.describe 'Hello world', type: :system do
  describe 'index page' do
    it 'shows the right content' do
      visit first_test_index_path
      expect(page).to have_content('Hello, world!')
    end
  end
end