#!/bin/bash -x

snakemake \
-n -j 24 \
--use-conda \
--configfile ./config/GRCh37_single_WES_benchmarking_config.yml