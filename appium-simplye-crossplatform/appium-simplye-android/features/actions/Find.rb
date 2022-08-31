require_relative 'Wait.rb'
require 'rspec'

class FindElements
  
  @@aWait = WaitElement.new  

  def findXpath(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:xpath, @element).displayed? } 
    $driver.find_element(:xpath, @element)
  end
  
  def findClass(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:class_name, @element).displayed? } 
    $driver.find_element(:class_name, @element)
    end
    
  def findId(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:id, @element).displayed? }     
    $driver.find_element(:id, @element)
  end

  def findAccessibilityId(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:accessibility_id, @element).displayed? }     
    $driver.find_element(:accessibility_id, @element)
  end

  def findText(element)
    @element = element
    @@aWait.wait_for { $driver.find_element(:text, @element).displayed? }     
    $driver.find_element(:text, @element)
  end
end