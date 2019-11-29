#!/bin/bash
PATH=/opt/python/python3.6.7/bin:$PATH
LD_LIBRARY_PATH="/opt/python/python3.6.7/lib"
export PATH LD_LIBRARY_PATH
mkdir -p $JUPYTERHUB_WORKDIR
cd $JUPYTERHUB_WORKDIR
JUPYTHER_OPT=""
if ! [[ -z "$DEBUG" ]]; then
  JUPYTHER_OPT="$JUPYTHER_OPT --debug"
fi
jupyterhub --config $JUPYTERHUB_WORKDIR/jupyterhub_config.py $JUPYTHER_OPT 2>&1 > jupyterhub.log&
exit 0
