require 'rails_helper'

RSpec.feature 'View pages', type: :feature do
	scenario "User creates a new widget" do
		visit "/pages/home"

		expect(page).to have_text("Lorem")
	end
end
