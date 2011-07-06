Feature:PRM-1060 Can't Link to Items on Premium (Session Replication Issue btwn Webs & Premium)


    
@selenium
Scenario: User is able to drag and drop and edit content
     Given an url "http://localhost:9292/?page_id=4"
     When user drag and drop "title" box
     And the "title" box should appear on the page
     When user edit "title" box with "hello"
     Then user should see the "hello" appear in "title" box
     


#Examples:
#    |skuurl|                                                                                      |user|
#    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_TWO_YEAR"|         |"prm-1060autotest"|
#    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_ONE_DAY_SALE_50"|  |"prm-1060autotest"|
    
