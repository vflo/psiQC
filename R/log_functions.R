################################################################################
# Functions for logging                                                        #
# Functions needed for setup, carry on and saving logs using the logging       #
# package                                                                      #
################################################################################
#' Logs formatter
#'
#' Custom log formatter for psi Project
#'
#' @family Logging Functions
#'
#' @param record log-record object from log action
#'
#' @return Formatted message for log-record
#'
#' @export

# START
# Function declaration
log_psi_format <- function(record) {

  # STEP 1
  # Formatting with sprintf
  sprintf(
    '"time=%s" "level=%s" "description=psiLog:%s" "message=%s"',
    record$timestamp, record$levelname, record$logger, record$msg
  )

  # END FUNCTION
}

################################################################################
#' Logging handler action
#'
#' Custom logging handler action for psi Project
#'
#' @family Logging Functions
#'
#' @param msg The final formatted message to be output
#'
#' @param handler The handler owning this action
#'
#' @export

# START
# Function declaration
log_psi_action <- function(msg, handler, ...) {

  # STEP 1
  # Check if file exists, as this is an action for writing log to file
  if (!exists('file', envir = handler)) {
    stop('Handler with psi "action" must have a "file" element\n')
  }

  if (length(list(...)) && "dry" %in% names(list(...)))
    return(exists("file", envir = handler))

  # STEP 2
  # Write log to the file with cat
  cat(paste(msg, '\n', sep = ''), file = with(handler, file), append = TRUE)

  # END FUNCTION
}

################################################################################
#' Setup handler
#'
#' Setting up the psi Project log handler
#'
#' @family Logging Functions
#'
#' @param file_name Name of the file in which the log will be saved
#'
#' @param logger Name of the logger
#'
#' @param level Level of log in character form: "FINEST", "DEBUG", "WARNING" or
#'   "ERROR".
#'
#' @export

# START
# Function declaration
log_psi_setup <- function(file_name, logger, level = "DEBUG") {

  # STEP 1
  # Setting up the handler
  logging::addHandler(
    log_psi_action, file = file_name,
    logger = logger, formatter = log_psi_format,
    level = level
  )

  # STEP 2
  # Add a line to the log file indicating date and time of the setup
  # cat(
  #   paste('\n##### ', Sys.time(), 'Logger: ', logger, ' Level = ', level, ' #####\n',
  #         '\n', sep = ' '),
  #   file = file_name, append = TRUE
  # )

  # END FUNCTION
}

################################################################################
