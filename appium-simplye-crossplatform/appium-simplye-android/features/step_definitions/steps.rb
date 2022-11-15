require_relative '../pages/homePageAndroid.rb'

home = HomePageAndroid.new

Given('user is on the home page') do
  sleep 5
  home.verifyHomePage()
end

And('user enter {string} code') do |user|
  home.sendUser(user)
end

And('user enter {string}') do |pword|
  home.sendPin(pword)
end

And('user clicks login') do
  home.ClickLogin()
end

And('user bookmarks page') do
  home.clickAccessibility("Add bookmark for this page")
end

And('user selects serif') do
  home.clickAccessibility("Serif font")
end

And('user selects sans serif') do
  home.clickAccessibility("Sans font")
end

And('user selects open dyslexic') do
  home.clickAccessibility("Open dyslexic font")
end

And('user selects white on black') do
  home.clickAccessibility("White on black text")
end

And('user selects black on sepia') do
  home.clickAccessibility("Black on sepia text")
end

And('user selects black on white') do
  home.clickAccessibility("Black on white text")
end

And('user decrease font size') do
  home.clickAccessibility("Decrease font size")
end

And('user increase font size') do
  home.clickAccessibility("Increase font size")
end

And('user selects book tab') do
  home.clickAccessibility("My Books")
end

And('user navigates to settings') do
  home.clickAccessibility("Settings")
end

And('user views about') do
  home.clickAccessibility("About SimplyE")
  home.clickAccessibility("Settings")
end

And('user views user agreement') do
  home.clickAccessibility("User Agreement")
  home.clickAccessibility("Settings")
end

And('user navigates to bookmark') do
  home.openTableOfContents()
  home.clickAccessibility("BOOKMARKS")
  home.clickId("org.nypl.labs.OpenEbooks.app:id/toc_bookmark_element")
end

And('user borrows book') do
  home.accessBookCover()
  home.borrowbook()
end

And('user cancels download') do 
  home.cancelDownload()
end

And('user downloads book') do 
  home.downloadBook()
  sleep 5
end

And('user reads book') do
  sleep 10
  home.clickReadButton()
end

And('user navigates to cover') do
  home.clickAccessibility("Read Button")
end

And('user presses back button') do
  home.clickBackButton()
end

And('check age gate') do
  home.ageGateClick()
end

And('user returns book') do
  home.returnBook()
end

And('user taps screen') do
  home.tapScreen()
end

And('user browses specific category') do
  home.browseSpecificCategory()
end

And('user browses to settings') do
  home.clickAccessibility("Settings")
end

And('user views full detail') do
  home.fullDetails()
end

And('user then logs in') do
  home.initialLogin()
end

And('user views advanced settings') do 
  home.clickId("android:id/summary")
  home.clickAccessibility("More options")
end

And('user logs out') do
  home.logout()
end

And('user views details') do
  home.accessBookCover()
end

And('user scrolls to description') do
  home.scrollToDescription()
end

And('user returns to details') do
  home.exitBook()
end

And('user views related books') do
  home.viewRelatedBooks()
end

And('select book to check out') do
  home.clickLabel("High School")
  home.clickCover()
end

Then('user access book details') do 
  home.accessBookDetail("The Autobiography and Other Writings, ebook, by Benjamin Franklin")
end

Then('verify ebook') do
  home.verifyEbook()
end

And('user clicks the log in with clever button') do
  home.clickLogClever()
end

And('user opens font options') do
  home.clickFontOptions()
end

And('user selects font options') do
  home.clickAccessibility("Serif font")
  sleep 3
  home.clickAccessibility("Sans font")
  sleep 3
  home.clickAccessibility("Open dyslexic font")
  sleep 3
  home.clickAccessibility("Black on white text")
  sleep 3
  home.clickAccessibility("White on black text")
  sleep 3
  home.clickAccessibility("Black on sepia text")
  sleep 3
  home.clickAccessibility("Decrease font size")
  sleep 3
  home.clickAccessibility("Increase font size")
  sleep 3
end

And('user closes font options') do
  home.exitFontMenu()
end

And('user opens TOC') do
  home.openTableOfContents()
end

And('user closes TOC choices') do
  home.exitTOC()
end

And('user swipes jacket lane') do
  home.swipeLane()
end

And('user browses lanes') do
  home.swipeLaneVertical()
end

And('user views category') do
  home.browseSpecificCategory()
end

And('user moves forward') do 
  sleep 10
  touchaction = Appium::TouchAction.new.tap(x: 968, y: 430)
  touchaction.perform
  touchaction = Appium::TouchAction.new.press({x: 917, y: 333}).move_to({x: 201, y: 325}).release
  touchaction.perform
end
    
And('user moves backward') do
  touchaction = Appium::TouchAction.new.tap(x: 70, y: 461)
  touchaction.perform
  touchaction = Appium::TouchAction.new.press({x: 0, y: 391}).move_to({x: 883, y: 375}).release
  touchaction.perform
end

And('user opens cover') do 
  home.clickLabel("COVER")
  home.openTableOfContents
end

And('user opens title') do 
  home.clickLabel("TITLE PAGE")
  home.openTableOfContents
end

And('user opens chapter one') do 
  home.clickLabel("ONE")
  home.openTableOfContents
end

And('user opens middle chapter') do 
  home.clickLabel("FOUR")
  home.openTableOfContents
end

And('user moves backward by swiping') do
  touchaction = Appium::TouchAction.new.press({x: 0, y: 391}).move_to({x: 883, y: 375}).release
  touchaction.perform
end

And('user moves forward by swiping') do
  touchaction = Appium::TouchAction.new.press({x: 917, y: 333}).move_to({x: 201, y: 325}).release
  touchaction.perform
end

And('user opens catalog') do
  home.clickAccessibility("Catalog")
end

Then('open list view') do
  home.openListView()
end

And('user scrolls through list') do
  home.scrollToXpath("Firestorm, ebook, by Klass, David","Book of a Thousand Days, ebook, by Hale, Shannon")
 end

And('user scrolls to category') do 
  home.clickLabel("High School")
  home.scrollToXpath("New Arrivals","Staff Picks")
end

