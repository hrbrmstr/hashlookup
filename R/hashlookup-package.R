#' Query and Orchestrate the CIRCL Hash Lookup Service
#'
#' CIRCL hash lookup (<https://circl.lu/services/hashlookup/>) is a public API to lookup
#' hash values against known database of files. National Software Reference Library (NSRL)
#' Reference Data Set (RDS) database is included and many others are
#' also included. Tools are provided to query and orchestrate the CIRCL hash lookup service.
#'
#' @md
#' @name hashlookup
#' @keywords internal
#' @references [CIRCL Hash Lookup](https://circl.lu/services/hashlookup/)
#' @author Bob Rudis (bob@@rud.is)
#' @import httr
#' @importFrom jsonlite fromJSON
#' @importFrom scales comma comma_format
#' @import stringi
#' @importFrom janitor clean_names
#' @importFrom openssl sha1 md5 sha256
"_PACKAGE"
