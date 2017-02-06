require 'spec_helper'

RSpec.feature "Navigating to FAQs", :type => :feature do

  it "allows me to view the FAQ page content" do
    visit 'https://doctorcareanywhere.com/'
    first(:link, 'What we do').click
    click_link 'FAQs'
    expect(page).to have_content 'Here’s a list of some of the most commonly asked questions we get.'
  end
end
