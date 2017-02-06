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

RSpec.feature "The FAQ page", :type => :feature do
  it "allows you to click through to the Appointments page" do
    visit_faq_page
    first(:xpath, "//a[@href='/what-we-do/appointments/']").click
    expect(page).to have_content 'Video & phone GP appointments'
  end
  it "allows you to click through to the Prescriptions page" do
    visit_faq_page
    first(:xpath, "//a[@href='/what-we-do/prescriptions/']").click
    expect(page).to have_content 'Speedy prescription service'
  end
  it "allows you to click through to the Our Doctors page" do
    visit_faq_page
    first(:xpath, "//a[@href='/about-us/our-doctors/']").click
    expect(page).to have_content 'The best healthcare experts'
  end
  it "allows you to click through to the Patient Records page" do
    visit_faq_page
    first(:xpath, "//a[@href='/what-we-do/patient-records/']").click
    expect(page).to have_content 'Your medical history'
  end
  it "allows you to click through to the Pricing page" do
    visit_faq_page
    first(:xpath, "//a[@href='/pricing/']").click
    expect(page).to have_content 'The right plan for you and your family'
  end
  it "allows you to click through to the Travelling Abroad page" do
    visit_faq_page
    first(:xpath, "//a[@href='/what-we-do/travelling-abroad/']").click
    expect(page).to have_content 'Speak to doctors you know and trust'
  end
end
