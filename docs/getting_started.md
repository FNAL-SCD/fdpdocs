# Getting Started

To use the Fermi Data Platform (FDP), you must:

1. Be added to the FDP Virtual Orginization (VO).
1. Be granted an affiliation role.

Both steps must be completed before access is granted.

## Getting Affiliation/VO
To request an account, click here [ServiceNow](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D9a35be8d1b42a550746aa82fe54bcb6f%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Under the additional affiliations, click the add button.
- Search for Fermi Data Platform in the pop up window and click add.
- Click submit. Note that the submission can take up to 5 minutes to process. After submitting, wait a few minutes before checking the status of the request.

Approval can take anywhere from a few hours to a few weeks. Once approved, you will be a member of Fermi Data Platform affiliation and the local `amsc` VO.

You will receive an email once your affiliation request has been approved. Approval of the affiliation is only the first step. You must also be granted an affiliation role before you can access FDP resources.

## Getting Roles

The first step is to check if your project area exists. If you have been told by the head of your project that it exists then you can move to the options.
To verify this, get a listing of the top level contents of the public area of FDP. 

Open <https://amsc.fnal.gov:2880/amsc/public/> in a web browser. If prompted about certificates, select **No**. You should see a list of project areas; confirm yours is included. 

There are two options to get a role/token.

If your experiment or project area does not exist, please contact your PI, the leader of your project, who should be in charge of creating your experiment or project area on FDP and ask them the status. 
We cannot create a role for you until the area exists.

If your experiment or project is listed, you can obtain an affiliation role using one of the following options:

### Option 1
Next to get a role you need to click here [ServiceNowPresetRoles](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D423d4bb41b4e2550746aa82fe54bcb8b%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)
We are trying to continually update this ServiceNow form but if you do not find your role please proceed to option 2.

- Click the add button.
- In the affiliation type in Fermi Data Platform hit search, then click on Fermi Data Platform.
- Click the lock under the affiliation roles, then hit the magnifying glass/search. Then search for your experiment/project and click add. Then click submit.

### Option 2
Users can open a ticket here for a role: [ServiceNowRole](https://fermi.servicenowservices.com/wp?id=evg_sc_cat_item&sys_id=18c27227042950008638553dd6544037)
Please follow the form instructions.
#### Form Instructions

- Confirm **Requested For** shows your name
- Set **Experiment** to **Other**
- Add yourself and **Shreyas Bhat** to the **watch list**
- Fill in the **Short description** and **Description** using the templates below.

**Short Description:**

```
For Distributed Computing to be added to a role for <PROJECT> 
```

**Description:** 

```
I would like to be added to the following FDP/amsc role:

Role name: <PROJECT>write

Replace `<PROJECT>` with your experiment or project name in both fields. The role name is your project name followed by `write` (for example, `myprojectwrite`).
