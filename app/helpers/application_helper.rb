# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def my_time_format(date)
    strftime("%m/%d/%Y")
  end
end
