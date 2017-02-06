require 'spec_helper'

RSpec.feature "Navigating to FAQs", :type => :feature do

  it "allows you to view the FAQ page" do
    visit_faq_page
    expect(page).to have_current_path '/what-we-do/faqs/'
  end

  it "allows you to view the FAQ page content" do
    visit_faq_page
    expect(page).to have_content 'Here’s a list of some of the most commonly asked questions we get.'
  end
end
