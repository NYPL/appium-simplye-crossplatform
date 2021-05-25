require 'appium_lib'
require 'selenium-webdriver'

desired_caps = {
  caps: {               
      deviceName: 'iPhone 8',
      platformName: 'iOS',
      platformVersion: '14.4',
      app: '/Users/caleb/Downloads/SimplyE-sim-3.6.5.3/SimplyE.app',
      automationName: 'XCUITest'
     },
      appium_lib: {
          server_url: 'http://localhost:4723/wd/hub'
      } 
#  caps: {  
#      reportDirectory: 'reports',
#      reportFormat: 'xml',
#      testName: 'Untitled',
#      udid: 'MQK9K20A31910299',
#      automationName: 'UiAutomator1',
#      appPackage: 'org.nypl.labs.OpenEbooks.app',
#      appActivity: 'org.nypl.simplified.main.MainActivity',
#      platformName: 'android',
#      autoGrantPermissions: true,
#      noSign: false
#      },
#      appium_lib: {
#          server_url: 'http://localhost:4723/wd/hub'
#      }
}

$driver = Appium::Driver.new(desired_caps, false)
