#' Get information about a hash
#'
#' @param hash (chr) length can be > 1 for bulk queries
#' @param type (chr) hash type. All passed-in hashes must be of the same type. Default is `md5`.
#' @note SHA-256 bulk lookups are not supported by the CIRCL hash lookup API
#' @export
#' @return data frame for `md5` and `sha1`; list for `sha256`
#' @references [CIRCL Hash Lookup](https://circl.lu/services/hashlookup/)
#' @examples
#' # individual
#'
#' hl_query("8ED4B4ED952526D89899E723F3488DE4", "md5")
#' hl_query("FFFFFDAC1B1B4C513896C805C2C698D9688BE69F", "sha1")
#' hl_query("301c9ec7a9aadee4d745e8fd4fa659dafbbcc6b75b9ff491d14cbbdd840814e9", "sha256")
#'
#' # bulk
#'
#' hl_query(
#'   hash = c(
#'     "6E2F8616A01725DCB37BED0A2495AEB2",
#'     "8ED4B4ED952526D89899E723F3488DE4",
#'     "344428FA4BA313712E4CA9B16D089AC4"
#'   ),
#'   type = "md5"
#' )
#'
hl_query <- function(hash, type = c("md5", "sha1", "sha256")) {

  type <- match.arg(tolower(type[1]), c("md5", "sha1", "sha256"), several.ok = FALSE)

  if (type == "sha256") {

    if (length(hash) > 1) stop("SHA-256 endpoint only supports inidivual lookups.", call.=FALSE)

    httr::GET(
      url = file.path("https://hashlookup.circl.lu/lookup", type, hash),
      httr::accept_json(),
      .HASHLOOKUP_UA
    ) -> res

  } else {

    httr::POST(
      url = file.path("https://hashlookup.circl.lu/bulk", type),
      encode = "json",
      body = list(
        hashes = I(hash)
      ),
      httr::accept_json(),
      httr::content_type_json(),
      .HASHLOOKUP_UA
    ) -> res

  }

  httr::stop_for_status(res)

  out <- httr::content(res, as = "text", encoding = "UTF-8")
  out <- jsonlite::fromJSON(out)

  if (inherits(out, "data.frame")) out <- janitor::clean_names(out)

  out

}
