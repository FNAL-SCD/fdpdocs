# Accessing Datasets on Fermi Data Platform 

FDP supports data access utilizing the following protocols:

* HTTP(s)/WebDAV
* XRootD
* Globus

The data is organized in hierarchical directory tree structure with parts of the tree
publicly accessible for reads. All write access  and read access to some parts of the tree 
requires authentication. 

## Authentication and Authorization

To allow authorized access to the data FDP utilizes OpenID Connect (OIDC) authentication
protocol within overall authorization flow implemented using OAuth2 authorization framework. 

Currently only Fermilab OIDC authentication is supported, although it is planned to extend this to other identity providers. 

<!-- add link to documentation on getting added to amsc vo once it exists -->

## Globus 

### File access in a browser via the globus.org website

<https://www.globus.org/>

Log in with Fermilab credentials, or with any Globus enabled identity provider. The latter case will only allow read access to public data.

Search for “Fermi Data Platform” in the collection search bar. There are several collections associated with FDP. The "Fermi Data Platform" collection allows read access to all publicly available data. The other collections allow read and write access to the corresponding group, given the user has existing access to that group.

### From the command line: 

    globus transfer [source-endpoint-ID]:[/path/to/source] [destination-ID]:[/path/to/destination] 

The Fermi Data Platform (read-only) endpoint ID is `d24ee643-99a9-471a-9650-bc56295a75a3` and the path is `/amsc/public` 

The IDs of the other collections can be found either from globus.org (click the ... to view collection details), or from the following `globus` command

    globus endpoint search "fermi data platform"

Instructions for using the AmSC data movement API to transfer files via Globus can be found [here](#using_amsc_data_movement_api)

Note: for uploads, the underlying dCache storage will not allow overwriting existing files, and trying to do so will fail with an "Operation not permitted" error. Either delete the existing copy beforehand, or submit the transfer with sync level 0 which will skip trying to transfer any file which already exists on the destination.

## Https/WebDAV

### Download public data using browser

<https://amsc.fnal.gov:2880/amsc/public> 

Allows to browse and download publicly available data. 


### Download public data to local host using curl

    curl -s -f –L https://amsc.fnal.gov:2880/[source_path] -o [destination_path] 

The `source_path` is the path to the data on `/amsc/public/...` 

### Download public data to local host using gfal

Using gfal, which requires the `gfal2-*` packages: 

    gfal-ls https://amsc.fnal.gov:2880/amsc 

    gfal-copy https://amsc.fnal.gov:2880/amsc/[source_path] [destination_path]

### Download project specific data requiring authorization using curl

Below is an example of using an OIDC token authorized to access the dune project directories for reading data. The access token is obtained from the [`htgettoken`](https://pypi.org/project/htgettoken/) utility (this is preinstalled on many fnal.gov systems).

    htgettoken -a htvaultprod.fnal.gov -i amsc -r duneread 
    export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))
    curl -f -L -s -H "Authorization: Bearer ${BEARER_TOKEN}" https://amsc.fnal.gov:2880/[source_path] -o [destination_path]

### Download project specific data requiring authorization using gfal

Below is an example of using an OIDC token authorized to access dune project directories for read:

    htgettoken -a htvaultprod.fnal.gov -i amsc -r duneread 
    export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))
    gfal-copy https://amsc.fnal.gov:2880/[source_path] [destination_path]

### Upload data from local host using curl

Below is an example of using an OIDC token to upload data to FDP using dunewrite role:

    htgettoken -a htvaultprod.fnal.gov -i amsc -r dunewrite
    export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))
    curl -f -L -s -H "Authorization: Bearer ${BEARER_TOKEN}"  -T[source_path]  https://amsc.fnal.gov:2880/[destination_path]

### Upload data from local host using gfal

Below is an example of using OIDC token to upload data to FDP using dunewrite role:

    htgettoken -a htvaultprod.fnal.gov -i amsc -r dunewrite
    export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))
    gfal-copy [source_path]  https://amsc.fnal.gov:2880/[destination_path]

### Copy data from public dCache to FDP

    htgettoken -a htvaultprod.fnal.gov -i dune
    export TOKEN_SRC=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))

    htgettoken -a htvaultprod.fnal.gov -i amsc -r dunewrite
    export TOKEN_DST=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))

PULL mode copy:
    
    curl -s --capath /etc/grid-security/certificates -L -X COPY \
          -H 'Secure-Redirection: 1' -H 'X-No-Delegate: 1' -H 'Credential: none' \
          -H "Authorization: Bearer $TOKEN_DST" -H "TransferHeaderAuthorization: Bearer $TOKEN_SRC" \
          -H "Source: https://fndcadoor.fnal.gov:2880/[source_path]" https://amsc.fnal.gov:2880/[destination_path]

PUSH mode copy:

    curl -s --capath /etc/grid-security/certificates -L -X COPY \
          -H 'Secure-Redirection: 1' -H 'X-No-Delegate: 1' -H 'Credential: none' \ 
          -H "Authorization: Bearer $TOKEN_SRC" -H "TransferHeaderAuthorization: Bearer $TOKEN_DST" \
          -H "Destination: https://amsc.fnal.gov:2880/[destinaion_path]"  https://fndcadoor.fnal.gov:2880/[source_path] 
 
## XRootD 

These commands require the `xrootd-client` package.

From the command line: 

Copy a file: 

    xrdcp root://amsc.fnal.gov/[source_path] [destination_path] 

List a directory: 

    xrdfs root://amsc.fnal.gov ls –l /amsc/public

Using gfal, which requires the `gfal2-*` packages: 

    gfal-ls root://amsc.fnal.gov/amsc/public 

    gfal-copy root://amsc.fnal.gov/amsc/[source_path] [destintation_path] 

## Using the `fsspec` python library

For applications that use the Python [`fsspec`](https://filesystem-spec.readthedocs.io/en/latest/) library, there are plugins for both [xrootd](https://github.com/scikit-hep/fsspec-xrootd) and [WebDAV](https://github.com/skshetry/webdav4) that allow streaming of data from FDP.

For example

```python
import fsspec
import h5py

with fsspec.open('root://amsc.fnal.gov/amsc/public/treasure/aoj/data/RunG_batch0.h5', 'rb') as filestream:
    with h5py.File(filestream, 'r') as f:
        print('Top level keys:')
        for k in f.keys():
            print(f'  {k}')
```

will output the following (without having to read every part of the file).

```
Top level keys:
  PFCands
  event_info
  jet_kinematics
  jet_tagging
```

Data formats that use fsspec include Apache [Arrow](https://arrow.apache.org/docs/python/filesystems.html#filesystem-fsspec) and [Parquet](https://arrow.apache.org/docs/python/parquet.html), among others
