require_relative '../actions/Click.rb'
require_relative '../actions/Find.rb'
require_relative '../actions/Type.rb'
require_relative '../actions/Scroll.rb'

class HomePage

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

   def clickLabel(labelname)
     @labelname = labelname
     @@aClick.clickHeaderLabel(labelname)    
   end

   def clickFontOptions()
     @@aClick.clickAccessibilityId("Show reader settings")
   end

   def initialLogin()
     @@aClick.clickAccessibilityId("Read E-Books from Your Library")
     @@aClick.clickXpath("//XCUIElementTypeButton[@name=\"Add a Library Later\"]")
     @@aClick.clickXpath("//XCUIElementTypeApplication[@name=\"Simply E\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther[2]/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeTextField")
     sleep(3)
     touchaction = Appium::TouchAction.new.tap(x: 196, y: 617)
     touchaction.perform
     touchaction1 = Appium::TouchAction.new.tap(x: 337, y: 429)
     touchaction1.perform
     sleep(5)
     @@aClick.clickXpath("//XCUIElementTypeApplication[@name=\"Simply E\"]/XCUIElementTypeWindow[1]/XCUIElementTypeOther/XCUIElementTypeOther[2]/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther/XCUIElementTypeOther")
     touchaction2 = Appium::TouchAction.new.tap(x: 337, y: 69)
     touchaction2.perform
   end

   def ageGateClick()
     @@aClick.clickId("org.nypl.simplified.simplye:id/splashEulaAgree")
     @@aClick.clickId("org.nypl.simplified.simplye:id/selectionButton")
     @@aClick.clickId("org.nypl.simplified.simplye:id/accountTitle")
     @@aClick.clickId("android:id/button1")
     @@aClick.clickAccessibilityId("Settings")
     @@aClick.clickXpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.RelativeLayout")
     @@aClick.clickXpath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout[1]/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]/android.widget.LinearLayout")
   end

   def openTableOfContents()
     @@aClick.clickAccessibilityId("Show table of contents")
   end

   def clickBackButton()
     @@aClick.clickBackButton()
   end

   def exitFontMenu()
     TouchAction.new.tap(x: 677, y: 368).perform    
   end

   def clickId(idname)
     @idname = idname
     @@aClick.clickId(idname)    
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
     @@aClick.clickXpath("//android.widget.FrameLayout[@content-desc='Catalog']/android.widget.ImageView")
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