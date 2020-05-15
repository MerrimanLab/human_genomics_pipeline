#!/bin/bash -x

snakemake \
-j 24 \
--use-conda \
--configfile ./config/GRCh37_single_WES_benchmarking_config.yml