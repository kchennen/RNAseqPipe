#! /usr/bin/env bash

WORKFLOW_DIR=$(dirname "$(dirname "$0")")/workflow;
INPUT_DIR="${WORKFLOW_DIR}/input";

if [[ -z $1 ]];
then
    echo "USAGE: $0 <FASTQ_DIR>";
    exit 1;
else
    tmp_dir=($(ls $1));
    for d in "${!tmp_dir[@]}"; do
      cp "$1/${tmp_dir[$d]}"/*.fastq.gz "${INPUT_DIR}";
    done
fi;

exit 0;
