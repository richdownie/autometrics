Given /I check for the header and footer/ do
  #header
  assert(@browser.div(:class, "new_ui_welcome_links").exists?)
  assert(@browser.contains_text("Logout"))
  assert(@browser.contains_text("Support"))
  assert(@browser.contains_text("Help"))
  assert(@browser.image(:src, /logo/).exists?)
  #footer
  assert(@browser.div(:class, "new_ui_footer_content").exists?)
  assert(@browser.image(:src, /footer_rs_logo.png/).exists?)
end