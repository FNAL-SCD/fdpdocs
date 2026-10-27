## Installing required packages

Dependencies are listed in pyproject.toml in this repository. Some are optional depending on which data access method you plan to use.

To install in a python environment,

```
python3 -m venv ~/.venv/fdpdocs
source ~/.venv/fdpdocs/bin/activate
```

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

Once the previous steps are complete, you will be able to get a token. This requires the `htgettoken` package (included in the required packages above).

Below is an example of using an OIDC token authorized to access project directories associated with `ROLENAME` for reading:

```
htgettoken -a htvaultprod.fnal.gov -i amsc -r <ROLENAME>read
export BEARER_TOKEN=$(< $XDG_RUNTIME_DIR/bt_u$(id -u))
```

The first time you run the htgettoken step, and occasionally after, it will prompt you to log in using your web browser. Follow the instructions as prompted.

## Next Steps

Now you can start reading and writing data and metadata to the FDP area. See [Accessing Datasets on Fermi Data Platform](accessing_datasets.md) for more information on reading and writing data, and [Using MetaCat](metadata.md) for more information on adding metadata.

There is a jupyter notebook (fdp_tutorial.ipynb) in this repository which walks through how to read and write data and metadata on FDP. You will need to `pip install ".[tutorial]"` to install the dependencies required for the tutorial. Make sure to get a token via the `htgettoken` command above before starting the notebook if you would like to do any operations other than reading public data and metadata.

