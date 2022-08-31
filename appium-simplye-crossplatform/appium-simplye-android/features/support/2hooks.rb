require_relative '../pages/homePageAndroid.rb'

home = HomePageAndroid.new

Before do
  $driver.start_driver
end

After do
  #home.logout()
  $driver.driver_quit
end