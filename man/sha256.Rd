% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/file-hashers.R
\name{sha256}
\alias{sha256}
\title{Create hash digest from a file}
\usage{
sha256(x)
}
\arguments{
\item{x}{path to file}
}
\value{
hash digest (chr)
}
\description{
Thin wrapper around {openssl} counterparts that automatically wrap \code{x} with \code{file()}
and return unclassed character representations of the digests.
}
\examples{
md5(system.file("samples/s_copypix.txt", package = "hashlookup")),
sha1(system.file("samples/s_copypix.txt", package = "hashlookup")),
sha256(system.file("samples/s_copypix.txt", package = "hashlookup")),
}
