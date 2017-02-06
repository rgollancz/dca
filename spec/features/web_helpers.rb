def visit_faq_page
  visit 'https://doctorcareanywhere.com/'
  first(:xpath, "//a[@href='/what-we-do/faqs/']").click
end
