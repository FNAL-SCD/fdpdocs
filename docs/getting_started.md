# Getting Started

To get started on using the Fermi Data Platform (FDP) you need to be added to the FDP VO. 

## Getting Affiliation/VO
To request an account, click here [ServiceNow](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D9a35be8d1b42a550746aa82fe54bcb6f%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Under the additional affiliations, click the add button.
- Search for Fermi Data Platform in the pop up window and click add.
- Click submit. Note that the submission can take up to 5 minutes to process. After submitting, wait a few minutes before checking the status of the request.

Approval can take anywhere from a few hours to a few weeks. Once approved, you will be a member of The Fermi Data Platform affiliation and the local `amsc` VO.

You will recieve and email that is only step one you still need to be added to a affliation role before you will actaully have access to FDP.

## Getting Affiliation Roles

There are two options to get a role/token. First you should make sure that your area is created on fdp.
gfal-ls -D "HTTP PLUGIN:RETRIEVE_BEARER_TOKEN=False" https://amsc.fnal.gov:2880/amsc/public/
Make sure that all tokens and proxys are destroyed before running the command.
To see if your project is listed.

If listed then you have two options for adding a token:

# Option 1
Next to get an affiliation role you need to click here: [ServiceNowRoles](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D423d4bb41b4e2550746aa82fe54bcb8b%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Click the add button.
- In the affiliation type in Fermi Data Platform hit search, then click on Fermi Data Platform.
- Click the lock under the affiliation roles, then hit the magnifying glass/search. Then search for your experiment and click add. Then click submit.

If your role is not listed then you can either to option 1 or option 3.

# Option 1
Users can open a ticket here for a role: [ServiceNowRole][https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/cmdb\_ci\_service.do%3Fsys\_id%3D9d4260a86f46420032544d1fde3ee4c2%26sysparm\_view%3Dess%26sysparm\_affiliation%3D]
Please follow the form instructions.
### Form Instructions

- Confirm **Requested For** shows your name
- Set **Experiment** to **Other**
- Check **Need distributed computing**
- Add yourself and **Shreyas Bhat** to the **watch list**

**Short Description:**

```
Want to be added to a role for EXPERIMENT
```

**Description** (replace NAME with your role/experiment):

```
I would like to be added to this role

Role name: NAMEwrite
```
# Option 2
Next to get an affiliation role you need to click here: [ServiceNowRoles](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D423d4bb41b4e2550746aa82fe54bcb8b%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Click the add button.
- In the affiliation type in Fermi Data Platform hit search, then click on Fermi Data Platform.
- Click the lock under the affiliation roles, then hit the magnifying glass/search. Then search for your experiment and click add. Then click submit.

