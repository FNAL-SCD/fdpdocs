# Getting Started

To use the Fermi Data Platform (FDP), you must:

1. Be added to the FDP VO.
1. Be granted an affiliation role.

Both steps must be completed before access is granted.

## Getting Affiliation/VO
To request an account, click here [ServiceNow](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D9a35be8d1b42a550746aa82fe54bcb6f%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Under the additional affiliations, click the add button.
- Search for Fermi Data Platform in the pop up window and click add.
- Click submit. Note that the submission can take up to 5 minutes to process. After submitting, wait a few minutes before checking the status of the request.

Approval can take anywhere from a few hours to a few weeks. Once approved, you will be a member of The Fermi Data Platform affiliation and the local `amsc` VO.

You will receive an email once your affiliation request has been approved. Approval of the affiliation is only the first step. You must also be granted an affiliation role before you can access FDP resources.

## Getting Affiliation Roles

There are two options to get a role/token. Before requesting a role, verify that your experiment or project area exists in FDP.
```
gfal-ls -D "HTTP PLUGIN:RETRIEVE_BEARER_TOKEN=False" https://amsc.fnal.gov:2880/amsc/public/
```
Before running this command, destroy any active tokens or proxies. Before running this command, destroy any active tokens or proxies. Verify that your experiment or project appears in the listing.
To see if your project is listed.

If your experiment or project is listed, you can obtain an affiliation role using one of the following options::

# Option 1
Users can open a ticket here for a role: [ServiceNowRole](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/cmdb\_ci\_service.do%3Fsys\_id%3D9d4260a86f46420032544d1fde3ee4c2%26sysparm\_view%3Dess%26sysparm\_affiliation%3D)
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
I would like to be added to the following FDP role:

Role name: NAMEwrite
```
# Option 2
Next to get an affiliation role you need to click here: [ServiceNowRoles](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D423d4bb41b4e2550746aa82fe54bcb8b%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Click the add button.
- In the affiliation type in Fermi Data Platform hit search, then click on Fermi Data Platform.
- Click the lock under the affiliation roles, then hit the magnifying glass/search. Then search for your experiment and click add. Then click submit.

