#!/bin/bash

# bootstrap
virtualenv $PWD/uv_bootstrap
source uv_bootstrap/bin/activate
pip install uv

# get preferred python
export UV_PYTHON_INSTALL_DIR=$PWD/python_versions
uv python install 3.13

# make actual python 3.13 virtualenv
uv venv --seed --python=3.13 $PWD/fdp_venv
source $PWD/fdp_venv/bin/activate
pip install uv

# clean out bootstrap
rm -rf $PWD/uv_bootstrap &

# now install things we need
uv pip install metacat-client xrootd globus-cli gfal htgettoken

cat >> $PWD/fdp_venv/bin/activate <<EOF
export METACAT_SERVER_URL=https://metacat.fnal.gov:9443/amsc_meta_prod/app
export METACAT_AUTH_SERVER_URL=https://metacat.fnal.gov:8143/auth/amsc
export UV_PYTHON_INSTALL_DIR=$PWD/python_versions
EOF
