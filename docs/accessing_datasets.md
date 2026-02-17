# Accessing Datasets on Fermi Data Platform 

## Globus 

To access the data, the user needs to be mapped to an account on the server. This is currently a manual process done on a case-by-case basis. 

### From globus online: 

https://www.globus.org/ 

Log in with Fermilab credentials 

Search for the “Fermi Data Platform” collection 

The data is in the `/amsc` directory 

### From the command line: 

    globus transfer [source-endpoint-ID]:[/path/to/source] [destination-ID]:[/path/to/destination] 

The Fermi Data Platform endpoint ID is `b35955d3-14d1-4aab-a1c9-189989f7d8d0` and the path is `/amsc` 

## webdav 

### From browser: 

https://amsc.fnal.gov:2880/amsc 

### From command line: 

    curl –L https://amsc.fnal.gov:2880/[source_path] -o [destination_path] 

The `source_path` is the path to the data on amsc 

Using gfal, which requires the `gfal2-*` packages: 

    gfal-ls https://amsc.fnal.gov:2880/amsc 

    gfal-copy https://amsc.fnal.gov:2880/amsc/[source_path] [destination_path] 

## XRootD 

Requires the `xrootd-client` package 

From the command line: 

Copy a file: 

    xrdcp root://amsc.fnal.gov/[source_path] [destination_path] 

List a directory: 

    xrdfs root://amsc.fnal.gov ls –l /amsc 

Using gfal, which requires the `gfal2-*` packages: 

    gfal-ls root://amsc.fnal.gov/amsc 

    gfal-copy root://amsc.fnal.gov/amsc/[source_path] [destintation_path] 

