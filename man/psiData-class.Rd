% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/psiData_class.R
\docType{class}
\name{psiData-class}
\alias{psiData-class}
\alias{psiData}
\title{An S4 class for psi data}
\description{
An S4 class for psi data
}
\section{Slots}{

\describe{
\item{\code{psi_data}}{A data frame with the psi data}

\item{\code{psi_flags}}{A data frame with the same dimensions of \code{psi_data}
with the flag info for each tree/TIMESTAMP combination}

\item{\code{si_code}}{A character vector of length \code{nrow(psi_data)} indicating
the site code}

\item{\code{timestamp}}{A POSIXct vector of length \code{nrow(psi_data)} with the
timestamp}

\item{\code{solar_timestamp}}{A POSIXct vector of length \code{nrow(psi_data)} with
the solar timestamp}

\item{\code{site_md}}{A data frame containing the site metadata}

\item{\code{plant_md}}{A data frame containing the plant metadata}
}}

