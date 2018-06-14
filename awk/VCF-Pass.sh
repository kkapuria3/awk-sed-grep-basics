#!/bin/bash

## Karan Kapuria 

zcat file.vcf.gz | awk '{if($0 ~ /\#/) print; else if($7 == "PASS") print}' | bgzip > file.pass.vcf.gz