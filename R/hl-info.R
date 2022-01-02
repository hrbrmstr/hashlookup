#' Get information about the hash lookup database
#'
#' @export
#' @return list classes `hl_info`
#' @references [CIRCL Hash Lookup](https://circl.lu/services/hashlookup/)
#' @examples
#' hl_info()
hl_info <- function() {

  httr::GET(
    url = "https://hashlookup.circl.lu/info",
    httr::accept_json(),
    .HASHLOOKUP_UA
  ) -> res

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  out[["stat:hashlookup_total_keys"]] <- as.numeric(out[["stat:hashlookup_total_keys"]])
  out[["stat:nsrl_modern_rds"]] <- as.numeric(out[["stat:nsrl_modern_rds"]])
  out[["stat:nsrl_legacy"]] <- as.numeric(out[["stat:nsrl_legacy"]])
  out[["stat:nsrl_ios"]] <- as.numeric(out[["stat:nsrl_ios"]])
  out[["stat:nsrl_android"]] <- as.numeric(out[["stat:nsrl_android"]])
  out[["hashlookup-version"]] <- as.numeric(out[["hashlookup-version"]])

  class(out) <- c("hl_info", "list")

  out

}

#' @rdname hl_info
#' @param x hashlookup info object
#' @param ... unused
#' @export
print.hl_info <- function(x, ...) {

  n <- nchar(scales::comma(x[["stat:hashlookup_total_keys"]], 1))

  writeLines(c(
    sprintf("Hash lookup API version: %s; NSRL Version: %s", x[["hashlookup-version"]], x[["nsrl-version"]]),
    sprintf("Total keys: %s", comma_pad(x[["stat:hashlookup_total_keys"]], n)),
    sprintf("Modern RDS: %s", comma_pad(x[["stat:nsrl_modern_rds"]], n)),
    sprintf("    Legacy: %s", comma_pad(x[["stat:nsrl_legacy"]], n)),
    sprintf("       iOS: %s", comma_pad(x[["stat:nsrl_ios"]], n)),
    sprintf("   Android: %s", comma_pad(x[["stat:nsrl_android"]], n))
  ))

}