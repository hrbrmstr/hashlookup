#' Create hash digest from a file
#'
#' Thin wrapper around {openssl} counterparts that automatically wrap `x` with `file()`
#' and return unclassed character representations of the digests.
#'
#' @param x path to file
#' @return hash digest (chr)
#' @export
#' @examples
#' md5(system.file("samples/s_copypix.txt", package = "hashlookup")),
#' sha1(system.file("samples/s_copypix.txt", package = "hashlookup")),
#' sha256(system.file("samples/s_copypix.txt", package = "hashlookup")),
sha1 <- function(x) {
  unclass(as.character(openssl::sha1(file(x))))
}

#' Create hash digest from a file
#'
#' Thin wrapper around {openssl} counterparts that automatically wrap `x` with `file()`
#' and return unclassed character representations of the digests.
#'
#' @param x path to file
#' @return hash digest (chr)
#' @export
#' @examples
#' md5(system.file("samples/s_copypix.txt", package = "hashlookup")),
#' sha1(system.file("samples/s_copypix.txt", package = "hashlookup")),
#' sha256(system.file("samples/s_copypix.txt", package = "hashlookup")),
sha256 <- function(x) {
  unclass(as.character(openssl::sha256(file(x))))
}

#' Create hash digest from a file
#'
#' Thin wrapper around {openssl} counterparts that automatically wrap `x` with `file()`
#' and return unclassed character representations of the digests.
#'
#' @param x path to file
#' @return hash digest (chr)
#' @export
#' @examples
#' md5(system.file("samples/s_copypix.txt", package = "hashlookup")),
#' sha1(system.file("samples/s_copypix.txt", package = "hashlookup")),
#' sha256(system.file("samples/s_copypix.txt", package = "hashlookup")),
md5 <- function(x) {
  unclass(as.character(openssl::md5(file(x))))
}