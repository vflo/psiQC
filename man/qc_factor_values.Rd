% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qc_md_general_checks.R
\name{qc_factor_values}
\alias{qc_factor_values}
\title{Metadata factor variables check}
\usage{
qc_factor_values(site = NULL, plant = NULL, psi = NULL, parent_logger = "test")
}
\arguments{
\item{site, plant, psi}{Data frames with the metadata
to check.}
}
\value{
A data frame with variable names and check result.
}
\description{
\code{qc_factor_values} function checks in the provided metadata if the
factor variables value is a valid value.
}
\details{
Values for factor variables in the metadata must be checked in order to
ensure that they are valid (i.e. they are one of the established factor
value).
}
\seealso{
Other Quality Checks Functions: 
\code{\link{create_dic}()},
\code{\link{qc_coordinates}()},
\code{\link{qc_data_results_table}()},
\code{\link{qc_ext_radiation}()},
\code{\link{qc_get_biomes_spdf}()},
\code{\link{qc_get_biome}()},
\code{\link{qc_get_timezone_coord}()},
\code{\link{qc_is_timestamp}()},
\code{\link{qc_md_cols}()},
\code{\link{qc_md_results_table}()},
\code{\link{qc_measured_sfn}()},
\code{\link{qc_pl_treatments}()},
\code{\link{qc_psi_N_nas}()},
\code{\link{qc_psi_SE_nas}()},
\code{\link{qc_psi_nas}()},
\code{\link{qc_set_timezone}()},
\code{\link{qc_simplify_questions}()},
\code{\link{qc_species_names_info}()},
\code{\link{qc_species_names}()},
\code{\link{qc_species_verification}()},
\code{\link{qc_start_process_psi}()},
\code{\link{qc_timestamp_nas}()}
}
\concept{Quality Checks Functions}
