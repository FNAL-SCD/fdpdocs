# Getting Started

To get started on using the Fermi Data Platform (FDP) you need to be added to the FDP VO. 

## Getting Affiliation/VO
To request an account, click here [ServiceNow](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D9a35be8d1b42a550746aa82fe54bcb6f%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Under the additional affiliations, click the add button.
- Search for Fermi Data Platform in the pop up window and click add.
- Click submit. Note that the submission can take up to 5 minutes to process. After submitting, wait a few minutes before checking the status of the request.

Approval can take anywhere from a few hours to a few weeks. Once approved, you will be a member of The Fermi Data Platform affiliation and the local `amsc` VO.

## Getting Affiliation Roles

Next to get an affiliation role you need to click here: [ServiceNowRoles](https://fermi.servicenowservices.com/now/nav/ui/classic/params/target/com.glideapp.servicecatalog_cat_item_view.do%3Fv%3D1%26sysparm_id%3D423d4bb41b4e2550746aa82fe54bcb8b%26sysparm_link_parent%3Da5a8218af15014008638c2db58a72314%26sysparm_catalog%3De0d08b13c3330100c8b837659bba8fb4%26sysparm_catalog_view%3Dcatalog_default%26sysparm_view%3Dcatalog_default)

- Click the add button.
- In the affiliation type in Fermi Data Platform hit search, then click on Fermi Data Platform.
- Click the lock under the affiliation roles, then hit the magnifying glass/search. Then search for your experiment and click add. Then click submit.

## Installing required packages

Dependencies are listed in pyproject.toml in this repository. Some are optional depending on which data access method you plan to use.

### Required packages

Most users will only need the required dependencies. Install with `pip install .`

Also run `source fdp-env.sh` in order to set the environment variables needed for using MetaCat.

Note that these instructions assume a bash-compatible shell. If you are using another shell, run the script using bash.

### Optional packages

If you plan on accessing the data on FDP via xrootd, do `pip install ".[xrootd]"` (Note that this requires that you already have `cmake` installed on your machine.)

If you plan on accessing the data on FDP via the globus command line tools, do `pip install ".[globus]"`

If you plan on accessing the data on FDP via gfal, do `pip install ".[gfal]"`

### All packages

You can also run `pip install ".[all]"` to install all optional dependencies.

### Installing packages via a bash script

Alternatively, if you prefer, run `bash bootstrap_fdp.bash` to install most of these dependencies (though not the tutorial notebook's requirements — see below).

## Getting a Token

Once the previous steps are complete, you will be able to get a token. This requires the `htgettoken` package.

Below is an example of using an OIDC token authorized to access dune project directories for reading:

```
htgettoken -a htvaultprod.fnal.gov -i amsc -r <ROLENAME>read
export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))
```

The first time you run the htgettoken step, and occasionally after, it will prompt you to log in using your web browser. Follow the instructions as prompted.

## Next Steps

Now you can start reading and writing data and metadata to the FDP area. See [Accessing Datasets on Fermi Data Platform](accessing_datasets.md) for more information on reading and writing data, and [Using MetaCat](metadata.md) for more information on adding metadata.

There is a jupyter notebook (fdp_tutorial.ipynb) in this repository which walks through how to read and write data and metadata on FDP. You will need to `pip install ".[tutorial]"` to install the dependencies required for the tutorial. Make sure to get a token via the `htgettoken` command above before starting the notebook if you would like to do any operations other than reading public data and metadata.

