#! /usr/bin/env bash

WORKFLOW_DIR=$(dirname "$(dirname "$0")")/workflow;
INPUT_DIR="${WORKFLOW_DIR}/input";

if [[ -z $1 ]];
then
    echo "USAGE: $0 <FASTQ_DIR>";
    exit 1;
else
    cp $1/*.fastq.gz "${INPUT_DIR}";
fi;

exit 0;


