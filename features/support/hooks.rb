require_relative '../pages/homePage.rb'

home = HomePage.new

Before do
  $driver.start_driver
end

After do
  #home.logout()
  $driver.driver_quit
end