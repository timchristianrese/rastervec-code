# An Experimental Evaluation of Spatiotemporal Database Systems for Vector-Raster Analysis

This repository contains the code for our paper "An Experimental Evaluation of Spatiotemporal Database Systems for Vector-Raster Analysis", currently under review at the 1st Workshop on Secure and Intelligent Data Spaces (SIDS 2026). 
## General Architecture

High-level Visualization of Benchmark Architecture
![architecture.pdf](./docs/architecture.pdf)

## Structure
To get started, please visit the [iac](./iac/) folder to setup the system on Stackit, or go to the [analysis](./analysis/) folder to run analyses on already present results. We include the benchmark results also used in the paper [here](./analysis/results/). 
- [Data](./data/)
- [General Benchmark Setup](./iac/)
- [Infrastructure Provisioning (Terraform)](./iac/terraform/)
- [Infrastructure Configuration (Ansible)](./iac/ansible/)
- [Benchmark Manager](./manager)
- [RasDaMan (Benchmark Client + SUT)](./rasdaman/)
- [ODC (Benchmark Client + SUT)](./opendatacube/)