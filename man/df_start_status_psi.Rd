% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/df_functions.R
\name{df_start_status_psi}
\alias{df_start_status_psi}
\title{Initialise an empty status file}
\usage{
df_start_status_psi(si_code, parent_logger = "test")
}
\arguments{
\item{si_code}{Character vector indicating the site code}
}
\value{
Invisible TRUE if no errors were encountered, invisible FALSE if
  there was errors. Also, status file is created in the corresponding folder.
}
\description{
Initialise an empty status file in yaml format, using the yaml package
}
\details{
Before creating an empty file, \code{df_start_status_psi} checks if an status
file already exists, in order to avoid accidental rewriting of the file.
}
\seealso{
Other Data Flow: 
\code{\link{df_accepted_to_lvl1_psi}()},
\code{\link{df_copy_templates_psi}()},
\code{\link{df_folder_structure}()},
\code{\link{df_get_data_folders}()},
\code{\link{df_get_status}()},
\code{\link{df_read_psiData}()},
\code{\link{df_received_to_accepted_psi}()},
\code{\link{df_report_folder_creation}()},
\code{\link{df_reset_data_status_psi}()},
\code{\link{df_set_status_psi}()},
\code{\link{df_whos_ready_to}()},
\code{\link{psi_data_constructor}()}
}
\concept{Data Flow}
