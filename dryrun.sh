#!/bin/bash -x

snakemake \
-n -j 24 \
--use-conda \
--configfile ./config/GRCh38_single_WES_config_template.yaml \
 --cluster-config cluster.json \
 --cluster "sbatch \
 -A {cluster.account} \
 t {cluster.time} \
 -n {cluster.n} \
 -p {cluster.partition} \
 --cpus-per-task {cluster.cpus} \
 --mail-user {email} \
 --mail-type {cluster.emailtype}"