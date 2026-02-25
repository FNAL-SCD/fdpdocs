# Using MetaCat

## Prerequisites

1. Obtain access to amsc VO.  <!-- add link to documentation on getting added to amsc vo once it exists -->
1. Set up the software environment.

Create a python environment.

    python3 -m venv ~/.venv/metacat

Create a script called `activate-metacat.sh` that activates the environment and sets the required environment variables with the following contents:

    #!/usr/bin/env bash
    source ~/.venv/metacat/bin/activate
    export METACAT_SERVER_URL="https://metacat.fnal.gov:9443/amsc_meta_prod/app"
    export METACAT_AUTH_SERVER_URL="https://metacat.fnal.gov:8143/auth/amsc"

Activate the environment and install the metacat client and htgettoken packages:

    source activate-metacat.sh
    pip install metacat-client
    pip install htgettoken

Every time you want to use MetaCat, do

    source activate-metacat.sh

When you're done using MetaCat,

    deactivate

## Login to MetaCat

To login to MetaCat:

    htgettoken -i amsc -a htvaultprod.fnal.gov
    metacat auth login -m token <username>

Now you are ready to use any metacat commands. Test with

    metacat version

This should show something like 

    MetaCat Server URL:         https://metacat.fnal.gov:9443/amsc_meta_prod/app
    Authentication server URL:  https://metacat.fnal.gov:8143/auth/amsc
    Server version:             4.1.4
    Client version:             4.1.4

## Metadata format

MetaCat requires all metadata field names to be of the format

    <category>.<name>
    <category>.<subcategory>.<name>
    etc

See more details in the [MetaCat documentation](https://fermitools.github.io/metacat/concepts.html#file-attributes)

## Example scripts

1. Generating metadata in MetaCat format
1. Declaring metadata to MetaCat and adding it to a dataset. Also creates a namespace and dataset if they do not already exist.
1. Updating metadata that has already been declared to MetaCat.


