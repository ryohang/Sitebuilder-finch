Feature:PRM-1060 Can't Link to Items on Premium (Session Replication Issue btwn Webs & Premium)


    
@selenium
Scenario Outline: User is able to drag and drop and edit content
     Given an url <url>
     When user drag and drop <modulename> box
     And the <modulename> box should appear on the page
     When user edit <modulename> box with <context>
     Then user should see the <context> appear in <modulename> box
     


Examples:
   |url|                                |modulename|    |context|
   |"http://localhost:9292/?page_id=4"|   |"title"|         |"hello"|
   |"http://localhost:9292/?page_id=5"|   |"title"|         |"hello"|
