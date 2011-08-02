Feature:Sitebuild finch proof of concept.

  
  
  
    
@selenium
Scenario Outline: User is able to drag and drop and edit content
     Given an url <url>
     When user login with <username> and <password>
     Then user click on "Home" in sitemanager
     When user drag and drop <modulename> box
     And the <modulename> box should appear on the page
     When user edit <modulename> box with <context>
     Then user should see the <context> appear in <modulename> box
     


Examples:
   |url|                               |username|                     |password|           |modulename|      |context|
   |"http://qa.members.webs.com"|      |"automationsitebuilderfinch"| |"automationtest"|   |"sitebuilder_finch"|         |"hello"|
  
