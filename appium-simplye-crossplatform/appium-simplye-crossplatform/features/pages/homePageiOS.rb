require_relative '../actions/Click.rb'
require_relative '../actions/Find.rb'
require_relative '../actions/Type.rb'
require_relative '../actions/Scroll.rb'

class HomePageiOS

  #Local Variables
   @@userIdField = "org.nypl.simplified.simplye:id/authBasicUserField"
   @@PassWordId = "org.nypl.simplified.simplye:id/authBasicPassField"
   @@logWithClever = "org.nypl.labs.OpenEbooks.app:id/authOAuthIntermediaryLogoImage"
    
   #instances of classes
   @@aFind = FindElements.new
   @@aClick = ClickElementsiOS.new
   @@aType = TypeTextClass.new
   @@aScroll = ScrollPage.new
   
   def verifyHomePage
     @@aClick.clickXpath("//android.widget.FrameLayout[@content-desc='Catalog']/android.widget.ImageView")     
	   @@aFind.findId(@@userIdField)     
   end
   
   #def sendUser(userid)
   #  @userId = userid
   #  @@aType.sendTypeId(@@userIdField, @userId)     
   #end
   
   def scrollToXpath(start, finish)
     #@@aClick.clickHeaderLabel("High School")
     @elstart = start
     @elend = finish
     sleep 2
     @@aScroll.scrollToName(@elstart, @elend)

   end

   def scrollToDescription()
     #@@aClick.clickHeaderLabel("High School")
     
     sleep 2
     @@aScroll.scrollToId("org.nypl.labs.OpenEbooks.app:id/bookDetailDescriptionTitle", "org.nypl.labs.OpenEbooks.app:id/bookDetailDescriptionText")

   end

   def viewRelatedBooks()
     #@@aClick.clickHeaderLabel("High School")
     
     touchaction = Appium::TouchAction.new.press(x: 177, y: 359).move_to({x: 195, y: 161}).release
     touchaction.perform
     @@aClick.clickXpath("(//XCUIElementTypeStaticText[@name=\"More…\"])[2]")

   end

   def swipeLane()
     touchaction = Appium::TouchAction.new.press(x: 312, y: 173).move_to({x: 59, y: 175}).release
     touchaction.perform
   end

   def swipeLaneVertical()
     touchaction = Appium::TouchAction.new.press(x: 177, y: 359).move_to({x: 195, y: 161}).release
     touchaction.perform
   end

   def clickLabel(labelname)
     @labelname = labelname
     @@aClick.clickHeaderLabel(labelname)    
   end

   def borrowBook()
       @@aClick.clickXpath("//XCUIElementTypeButton[@name=\"Get\"]")
   end

   def clickReadButton()
       @@aClick.clickXpath("//XCUIElementTypeButton[@name=\"Read\"]")
   end

   def returnBook()
       @@aClick.clickXpath("//XCUIElementTypeButton[@name=\"Return\"]")
       sleep 1
       @@aClick.clickXpath("//XCUIElementTypeButton[@name=\"Return\"]")
   end

   def cancelDownload()
       sleep 1
       @@aClick.clickXpath("//XCUIElementTypeButton[@name=\"Cancel\"]")
   end

   def downloadBook()
       @@aClick.clickXpath("//XCUIElementTypeButton[@name=\"Download\"]")
   end

   def tapScreen()
       touchaction2 = Appium::TouchAction.new.tap(x: 200, y: 200)
       touchaction2.perform
   end

   def clickFontOptions()
     @@aClick.clickAccessibilityId("Toggle reader settings")
   end

   def initialLogin()
     sleep(3)
     @@aClick.clickAccessibilityId("Change Library Account")
     sleep(3)
     @@aClick.clickAccessibilityId("Manage Accounts")
     sleep(3)
     @@aClick.clickAccessibilityId("Add Library")
     sleep(3)
     @@aClick.clickAccessibilityId("The New York Public Library")
     sleep(3)
     @@aClick.clickAccessibilityId("The New York Public Library")
     sleep(3)
     @@aType.sendKey("//XCUIElementTypeApplication[@name=\"Simply E\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[1]/XCUIElementTypeOther[2]", "23333999999931")
     sleep(3)
     @@aType.sendKey("//XCUIElementTypeApplication[@name=\"Simply E\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTable/XCUIElementTypeCell[2]/XCUIElementTypeOther[1]/XCUIElementTypeOther", "3787")
     sleep(3)
     @@aClick.clickAccessibilityId("Log In")
     sleep(15)


   end

   def ageGateClick()
     @@aClick.clickXpath("//XCUIElementTypeStaticText[@name=\"Add a Library Later\"]")
     sleep(3)
     touchaction = Appium::TouchAction.new.tap(x: 177, y: 359)
     touchaction.perform
     #@@aClick.clickId("3A000000-0000-0000-3816-000000000000")
     sleep(2)
     touchaction2 = Appium::TouchAction.new.tap(x: 194, y: 609)
     touchaction2.perform
     sleep(2)
     touchaction3 = Appium::TouchAction.new.tap(x: 337, y: 426)
     touchaction3.perform
     sleep(2)
     touchaction4 = Appium::TouchAction.new.tap(x: 343, y: 69)
     touchaction4.perform
     sleep(2)
   end

   def fullDetails()
     @@aClick.clickXpath("//XCUIElementTypeStaticText[@name=\"More…\"]")
     sleep(3)
   end

   def openTableOfContents()
     @@aClick.clickAccessibilityId("Table of contents")
   end

   def clickBackButton()
     @@aClick.clickBackButton()
   end

   def exitFontMenu()
     TouchAction.new.tap(x: 677, y: 368).perform    
   end

   def exitBook()
     TouchAction.new.tap(x: 44, y: 44).perform    
   end

   def exitTOC()
     TouchAction.new.tap(x: 677, y: 368).perform    
   end

   def clickId(idname)
     @idname = idname
     @@aClick.clickId(idname)    
   end

   def clickXpath(idname)
     @idname = idname
     @@aClick.clickXpath(idname)  
   end

   def clickAccessibility(idname)
     @idname = idname
     @@aClick.clickAccessibilityId(idname)    
   end

   def sendPin(pword)
     @pword = pword
     @@aType.sendTypeId(@@PassWordId,@pword)     
   end
   
   def ClickLogin
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/authBasicLogin")
     sleep 15     
   end

   def clickCover
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/coverImage")
   end

   def openCatalog
     @@aClick.clickAccessibilityId("Change Library Account")
     sleep(3)
     @@aClick.clickAccessibilityId("The New York Public Library")
     sleep(3)
   end

   def openListView
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/feedLaneTitle")
   end

   def browseSpecificCategory
     #@@aClick.clickHeaderLabel("High School")
     @@aClick.clickXpath("(//XCUIElementTypeStaticText[@name=\"Short Reads\"])[1]")
     sleep 3
   end

   def accessBookDetail(details)
     @details = details
     @@aClick.clickAccessibilityId(@details)
   end

   def accessBookCover()
     touchaction2 = Appium::TouchAction.new.tap(x: 15, y: 116)
     touchaction2.perform
     sleep(2)
   end

   def logout()
     @@aClick.clickAccessibilityId("Settings")
     sleep 2
     @@aClick.clickAccessibilityId("Settings")
     @@aClick.clickId("android:id/title")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/accountTitle")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/authBasicLogin")
     sleep 6
   end

   def loginsimply()
     @@aClick.clickAccessibilityId("Settings")
     sleep 2
     @@aClick.clickAccessibilityId("Settings")
     @@aClick.clickId("android:id/title")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/accountTitle")
     sleep 6
   end
      
   def verifyEbook
     @@aClick.clickAccessibilityId("Catalog")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/feedLaneTitle")
     @@aClick.clickId("org.nypl.labs.OpenEbooks.app:id/feedLaneTitle")
     sleep 5
   end
   
  def clickLogClever
     @@aClick.clickId(@@logWithClever)
   end
end