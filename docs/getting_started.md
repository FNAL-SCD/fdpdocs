### Getting Started

To get started on using the Fermi Data Platform (FDP) you need to be added to the FDP VO. 
To get an account you need to click here [ServiceNow](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D9a35be8d1b42a550746aa82fe54bcb6f%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default). Then go to the add button under the additional affiliations a pop up window comes up. Search for fermi data platform. Click add. Then click submit. This takes a really log time to submit. Hit submit do something else for 5 minutes and then check if it submitted.

After your VO has been approved, the next step is to be added to a speicfic project or role. To do that you would want to click here [ServiceNowRoles](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D423d4bb41b4e2550746aa82fe54bcb8b%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default) 
then click add. 
A pop up window will come up. In the Affliation type in Fermi Data Platform hit search click on Fermi Data Platform. 
Click the lock under the affliation roles, then hit the magnifying glass/search. A pop up window will come up. Then search for your experiment and click add. Then click submit.


Once you have the affliation and role you should be able to start writing data to the FDP area.
One thing you will need for both uploading and seeing data as well as working on adding metadata you will need a token. 
Below is an example of using OIDC token authorized to access dune project directories for read:

    htgettoken -a htvaultprod.fnal.gov -i amsc -r duneread
    export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))


