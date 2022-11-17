require_relative '../actions/Click.rb'
require_relative '../actions/Find.rb'
require_relative '../actions/Type.rb'
require_relative '../actions/Scroll.rb'

class HomePageAndroid

  #Local Variables
   @@userIdField = "org.nypl.simplified.simplye:id/authBasicUserField"
   @@PassWordId = "org.nypl.simplified.simplye:id/authBasicPassField"
   @@logWithClever = "org.nypl.labs.OpenEbooks.app:id/authOAuthIntermediaryLogoImage"
    
   #instances of classes
   @@aFind = FindElements.new
   @@aClick = ClickElements.new
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
     @@aClick.clickId("org.nypl.simplified.simplye:id/bookDetailRelated")

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
       @@aClick.clickAccessibilityId("Download Button")
   end

   def clickReadButton()
       @@aClick.clickAccessibilityId("Read Button")
   end

   def returnBook()
       sleep 4
       
       @@aClick.clickAccessibilityId("Delete Button")
       sleep 4
   end

   def cancelDownload()
       sleep 1
       @@aClick.clickAccessibilityId("Download Button")
   end

   def downloadBook()
       @@aClick.clickAccessibilityId("Download Button")
   end

   def tapScreen()
       touchaction2 = Appium::TouchAction.new.tap(x: 200, y: 200)
       touchaction2.perform
   end

   def clickFontOptions()
     @@aClick.clickAccessibilityId("Settings")
   end

   def initialLogin()
     sleep(3)
     @@aClick.clickAccessibilityId("Choose another library catalog...")
     sleep(3)
     @@aClick.clickAccessibilityId("Manage Accounts")
     sleep(3)
     @@aClick.clickText("Add account")
     sleep(3)
     @@aClick.clickText("The New York Public Library")
     sleep(3)
     @@aClick.clickText("Accounts")
     sleep(3)
     @@aClick.clickText("The New York Public Library")
     sleep(3)
     @@aType.sendKey("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.EditText", "23333999999931")
     sleep(3)
     @@aType.sendKey("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.ScrollView/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.FrameLayout/android.widget.EditText", "3787")
     sleep(3)
     @@aClick.clickId("org.nypl.simplified.simplye:id/authBasicLogin")
     sleep(15)


   end

   def ageGateClick()
     @@aClick.clickId("org.nypl.simplified.simplye:id/splashEulaAgree") 
     @@aClick.clickId("org.nypl.simplified.simplye:id/selectionAlternateButton") 
     sleep(3)
     @@aClick.clickId("org.nypl.simplified.simplye:id/birthYearSpinner") 
     sleep(2)
     @@aClick.clickXpath("/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.TextView[5]")
     sleep(3)
     @@aClick.clickId("android:id/button1") 

   end

   def fullDetails()
     @@aClick.clickXpath("//XCUIElementTypeStaticText[@name=\"More…\"]")
     sleep(3)
   end

   def openTableOfContents()
     @@aClick.clickAccessibilityId("Table Of Contents & Bookmarks")
   end

   def clickBackButton()
     @@aClick.clickBackButton()
   end

   def exitFontMenu()
     touchaction2 = Appium::TouchAction.new.tap(x: 151, y: 484)
     touchaction2.perform 
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
     @@aClick.clickText("Short Reads")
     sleep 3
   end

   def accessBookDetail(details)
     @details = details
     @@aClick.clickAccessibilityId(@details)
   end

   def accessBookCover()
     sleep(2)
     touchaction2 = Appium::TouchAction.new.tap(x: 151, y: 484)
     touchaction2.perform
     #@@aClick.clickXpath("(//android.widget.LinearLayout[@content-desc=\"A Brief Theory of Triangular Scale, ebook, by Janet E. Irvin\"])[1]/android.widget.FrameLayout/android.widget.ImageView")
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