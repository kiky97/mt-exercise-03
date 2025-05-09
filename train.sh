#! /bin/bash

scripts=$(dirname "$0")
base=$scripts/..

models=$base/models
configs=$base/configs

mkdir -p $models

num_threads=8
#device=0

# measure time

SECONDS=0

logs=$base/logs

model_name=deen_transformer_regular

mkdir -p $logs

mkdir -p $logs/$model_name

OMP_NUM_THREADS=$num_threads python -m joeynmt train $configs/$model_name.yaml > $logs/$model_name/oup 2> $logs/$model_name/ekk

echo "time taken:"
echo "$SECONDS seconds"
