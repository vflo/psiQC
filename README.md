# psiQC

`psiQC` is an R package designed to facilitate quality control in leaf water potential measurements, integrated with the SAPFLUXNET database. This package provides tools and scripts to ensure data integrity and reliability for researchers working with plant physiological data.

## Installation

Currently, `psiQC` is available as a development version on GitHub. You can install it using `devtools`:

```r
# Install devtools if you haven't already
if (!requireNamespace("devtools", quietly = TRUE)) {
    install.packages("devtools")
}

# Install psiQC from GitHub
devtools::install_github("vflo/psiQC")
```

## Usage

To utilize `psiQC`, follow these steps:

1. **Server Preparation**: First, execute the `server_preparation_script.R` located in the `inst/run_scripts` folder. This script prepares your environment and data for analysis.

2. **Quality Control**: Next, run the `main_script.R` to perform the quality control (QC) checks on your data. This script applies a series of QC measures to ensure data reliability.

```r
# Example to run scripts
source("path/to/inst/run_scripts/server_preparation_script.R")
source("path/to/inst/run_scripts/main_script.R")
```

Replace `path/to` with the actual path where the `psiQC` package scripts are located.

## License

`psiQC` is licensed under the MIT License, further details of which can be found in the LICENSE file included with the package. Additionally, this package adheres to Creative Commons Attribution 4.0 International (CC BY 4.0) licensing guidelines.