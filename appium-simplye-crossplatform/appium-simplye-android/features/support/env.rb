require 'appium_lib'
require 'selenium-webdriver'
require 'allure-cucumber'

desired_caps = {
  caps: {               
      #udid: '017AY1S1W1',
      deviceName: 'Pixel 2',
      automationName: 'UiAutomator2',
      app: '/Users/caleb/Downloads/newestbuild.apk',
      #appPackage: 'org.nypl.labs.OpenEbooks.app',
      #appActivity: 'org.nypl.simplified.main.MainActivity',
      platformName: 'Android',
      newCommandTimeout: 3600,
      autoGrantPermissions: true,
      plartformVersion: "11",
	  adbExecTimeout: "90000",
	  disableAndroidWatchers: true,
	  ignoreHiddenApiPolicyError: true
	  
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
