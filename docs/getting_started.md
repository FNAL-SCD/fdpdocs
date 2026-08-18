# Getting Started

To get started on using the Fermi Data Platform (FDP) you need to be added to the FDP VO. 

## Getting Affiliation/VO
To request an account, click here [ServiceNow](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D9a35be8d1b42a550746aa82fe54bcb6f%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Under the additional affiliations, click the add button.
- Search for Fermi Data Platform in the pop up window and click add.
- Click submit. Note that the submission can take up to 5 minutes to process. After submitting, wait a few minutes before checking the status of the request.

Approval can take anywhere from a few hours to a few weeks. Once approved, you will be a member of The Fermi Data Platform affiliation and the local `amsc` VO.

## Getting Affliation Roles

Next to get an affliation role you need to click here: [ServiceNowRoles](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D423d4bb41b4e2550746aa82fe54bcb8b%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Click the add button.
- In the affliation type in Fermi Data Platform hit search, then click on Fermi Data Platform.
- Click the lock under the affliation roles, then hit the magnifying glass/search. Then search for your experiment and click add. Then click submit.

## Getting a Token

Once the previous steps are complete, you will be able to get a token. This requires the `htgettoken` package.

Below is an example of using an OIDC token authorized to access dune project directories for reading:

```
htgettoken -a htvaultprod.fnal.gov -i amsc -r amscduneread
export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))
```

## Next Steps

Now you can start reading and writing data and metadata to the FDP area. See [Accessing Datasets on Fermi Data Platform](accessing_datasets.md) for more information on reading and writing data, and [Using MetaCat](metadata.md) for more information on adding metadata.

