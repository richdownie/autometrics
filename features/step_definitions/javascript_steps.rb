
Given /I suspend the activity/ do
  require 'win32ole'
  @browser.div(:text, "Suspend").fire_event('onclick')
  @autoit = WIN32OLE.new('AutoItX3.Control')
  @autoit.WinWaitActive("Windows Internet Explorer")
  @autoit.Send "{ENTER}"
end

