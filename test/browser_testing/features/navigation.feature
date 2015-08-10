Feature: verify the navigation tabs/links works according to requirements
  As a first time visitor to the Owning a Home page
  I want to click on invidual tabs and links
  So that I can easily navigate the site

@smoke_testing @landing_page
Scenario Outline: Test inbound links in the landing page
   Given I navigate to the OAH Landing page
   When I click on the "<link_name>" link
   Then I should be directed to the internal "<relative_url>" URL
      And I should see "<page_title>" displayed in the page title

Examples:
  | link_name      		            | page_title                      | relative_url                             |
  | Learn more about loan options | Loan Options                    | loan-options/                            |
  | Closing checklist		          | checklist_mortgage_closing.pdf  | resources/checklist_mortgage_closing.pdf |
  | Guide to closing forms        | mortgage_closing_forms.pdf      | resources/mortgage_closing_forms.pdf     |



@smoke_testing @landing_page
Scenario Outline: Test outbound links in the landing page
   Given I navigate to the OAH Landing page
   When I click on the "<link_name>" link
   Then I should see the "<relative_url>" URL with page title <page_title> open in a new tab

Examples:
  | link_name                                       | page_title               | relative_url                                               |
  | Find a HUD-certified housing counselor          | Find a housing counselor | /find-a-housing-counselor/                                 |
  | Get answers from AskCFPB                        | Mortgages                | /askcfpb/search/?selected_facets=category_exact:mortgages  |
  | Submit it to the CFPB                           | Submit a complaint       | /complaint/#mortgage                                       |
  | Most are listed in this loan originator database | Consumer Access | http://www.nmlsconsumeraccess.org/ |
  | Learn how CFPB is protecting mortgage borrowers | Mortgages                | /mortgage/ |
