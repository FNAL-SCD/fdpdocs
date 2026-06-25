#!/bin/bash

do_amsc=false

help() {
   echo "usage: $0 [--help] [--amsc] [--dest dir]"
   echo "bootstrap a python area for FDP clients"
   echo " --help     print this message"
   echo " --amsc     also install amsc client package"
   echo " --dest dir install in specified directory dir"
   echo "            (default current directory)"
}

dest() {
   # make and move to destination directory
   mkdir -p $1
   cd $1
}

while [ $# -ge 1 ]
do
    case x$1 in
    x--help) help; exit 0;;
    x--amsc) do_amsc=true; shift;;
    x--dest) dest $2; shift; shift;;
    *)       echo "unknown argument '$1'"; help; exit 1;;
    esac
done

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

if $do_amsc
then
    # add the amsc python client stuff
    git clone https://github.com/amsc-interfaces/amsc-client-tutorial.git

    (cd amsc-client-tutorial ; uv pip install -r requirements.txt)
fi


