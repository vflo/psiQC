% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/qc_md_general_checks.R
\name{qc_plant_dics}
\alias{qc_plant_dics}
\title{Dictionary creation for plant_md variables}
\usage{
qc_plant_dics(variable, parent_logger = "test")
}
\arguments{
\item{variable}{Variable name in which the dictionary is needed as character
vector (e.g. \code{'pl_status'}).}
}
\value{
A character vector containing the valid values for the provided
  variable
}
\description{
\code{qc_plant_dics} function creates a dictionary for the selected variable
containing the accepted values for that variable
}
\details{
In order to check if factor variables have a valid value or have been bad
formatted/introduced in the data template, first it is needed to have a list
of accepted values for each variable. This function creates that list to
use in the checks.
}
\section{Accepted variables}{

The factor variables in plant_md are \code{pl_status} and \code{measured_sfn}.
}

\seealso{
Other Dictionaries: 
\code{\link{qc_psi_dics}()},
\code{\link{qc_site_dics}()}
}
\concept{Dictionaries}
