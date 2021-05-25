require_relative 'Wait.rb'
require 'rspec'

class ScrollPage
  
  def scrollToName(el_start, el_end)
  #get element coordinates start
  el_start = $driver.find_element(:xpath, "//android.widget.TextView[contains(@text,\'"+el_start+"\')]")
  screen_x_start = el_start.location.x
  screen_y_start = el_start.location.y
  #get element coordinates end
  el_end = $driver.find_element(:xpath, "//android.widget.TextView[contains(@text,\'"+el_end+"\')]")
  screen_x_end = el_end.location.x
  screen_y_end = el_end.location.y
  Appium::TouchAction.new.swipe(start_x: screen_x_start, start_y: screen_y_start, delta_x: screen_x_end, delta_y: screen_y_end).perform
  end

  def scrollToId(el_start, el_end)
  #get element coordinates start
  el_start = $driver.find_element(:id, el_start)
  screen_x_start = el_start.location.x
  screen_y_start = el_start.location.y
  #get element coordinates end
  el_end = $driver.find_element(:id, el_end)
  screen_x_end = el_end.location.x
  screen_y_end = el_end.location.y
  Appium::TouchAction.new.swipe(start_x: screen_x_start, start_y: screen_y_start, delta_x: screen_x_end, delta_y: screen_y_end).perform
  end

end