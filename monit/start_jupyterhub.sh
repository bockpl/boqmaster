#!/bin/bash
module load conda

source /opt/miniconda3/etc/profile.d/conda.sh
conda activate jupyter

mkdir -p $JUPYTERHUB_WORKDIR
cd $JUPYTERHUB_WORKDIR
JUPYTHER_OPT=""
if ! [[ -z "$DEBUG" ]]; then
  JUPYTHER_OPT="$JUPYTHER_OPT --debug"
fi
jupyterhub --config $JUPYTERHUB_CONFIGDIR/jupyterhub_config.py $JUPYTHER_OPT &>> /var/log/jupyterhub.log&
exit 0
