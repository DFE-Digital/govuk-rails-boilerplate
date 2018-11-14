require 'rails_helper'

RSpec.feature 'View pages', type: :feature do
  scenario "Navigate to home" do
    visit "/pages/home"

    expect(page).to have_text("Lorem")
  end
end
