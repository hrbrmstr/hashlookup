
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-80%25-lightgrey.svg)
[![R-CMD-check](https://github.com/hrbrmstr/hashlookup/workflows/R-CMD-check/badge.svg)](https://github.com/hrbrmstr/hashlookup/actions?query=workflow%3AR-CMD-check)
[![Linux build
Status](https://travis-ci.org/hrbrmstr/hashlookup.svg?branch=master)](https://travis-ci.org/hrbrmstr/hashlookup)
[![Coverage
Status](https://codecov.io/gh/hrbrmstr/hashlookup/branch/master/graph/badge.svg)](https://codecov.io/gh/hrbrmstr/hashlookup)
![Minimal R
Version](https://img.shields.io/badge/R%3E%3D-3.6.0-blue.svg)
![License](https://img.shields.io/badge/License-MIT-blue.svg)

# hashlookup

Query and Orchestrate the CIRCL Hash Lookup Service

## Description

CIRCL hash lookup (<https://circl.lu/services/hashlookup/>) is a public
API to lookup hash values against known database of files. National
Software Reference Library (NSRL) Reference Data Set (RDS) database is
included and many others are also included. Tools are provided to query
and orchestrate the CIRCL hash lookup service.

## What’s Inside The Tin

The following functions are implemented:

-   `hl_info`: Get information about the hash lookup database
-   `hl_query`: Get information about a hash
-   `md5`: Create hash digest from a file
-   `sha1`: Create hash digest from a file
-   `sha256`: Create hash digest from a file

## TODO

Support the offline [bloom filter
searches](https://circl.lu/services/hashlookup/#querying-hashlookup-without-online-queries).

## Installation

``` r
remotes::install_github("hrbrmstr/hashlookup")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

## Usage

``` r
library(hashlookup)

# current version
packageVersion("hashlookup")
## [1] '0.1.0'
```

### Hash lookup API info

``` r
hl_info()
## Hash lookup API version: 1.2; NSRL Version: December 2021
## Total keys: 4,244,312,952
## Modern RDS:   192,677,749
##     Legacy:   113,737,918
##        iOS:       931,242
##    Android:    41,589,780
```

### Individual lookups

``` r
hl_query("8ED4B4ED952526D89899E723F3488DE4", "md5") %>% knitr::kable("markdown")
```

| crc32    | file_name                                                                                                      | file_size | md5                              | op_system_code | product_code | sha_1                                    | special_code | db              | insert_timestamp   | source |
|:---------|:---------------------------------------------------------------------------------------------------------------|:----------|:---------------------------------|:---------------|:-------------|:-----------------------------------------|:-------------|:----------------|:-------------------|:-------|
| 7A5407CA | wow64_microsoft-windows-i..timezones.resources_31bf3856ad364e35_10.0.16299.579_de-de_f24979c73226184d.manifest | 2520      | 8ED4B4ED952526D89899E723F3488DE4 | 362            | 190742       | 00000079FD7AAC9B2F9C988C50750E1F50B27EB5 |              | nsrl_modern_rds | 1638572532.3165467 | NSRL   |

``` r
hl_query("FFFFFDAC1B1B4C513896C805C2C698D9688BE69F", "sha1") %>% knitr::kable("markdown")
```

| crc32    | file_name | file_size | md5                              | op_system_code | product_code | sha_1                                    | special_code | db              | insert_timestamp   | source |
|:---------|:----------|:----------|:---------------------------------|:---------------|:-------------|:-----------------------------------------|:-------------|:----------------|:-------------------|:-------|
| CBD64CD9 | .rela.dyn | 240       | 131312A96CAD4ACAA7E2631A34A0D47C | 362            | 163709       | FFFFFDAC1B1B4C513896C805C2C698D9688BE69F |              | nsrl_modern_rds | 1638670863.3919017 | NSRL   |

``` r
hl_query("301c9ec7a9aadee4d745e8fd4fa659dafbbcc6b75b9ff491d14cbbdd840814e9", "sha256") %>% str()
## List of 14
##  $ FileName               : chr "snap-hashlookup-import/usr/bin/openssl"
##  $ FileSize               : chr "723944"
##  $ MD5                    : chr "34D827A288FA51B93297EF2A8A43B769"
##  $ SHA-1                  : chr "72F104BF11A12511154267328F069FE0541E841E"
##  $ SHA-256                : chr "301C9EC7A9AADEE4D745E8FD4FA659DAFBBCC6B75B9FF491D14CBBDD840814E9"
##  $ SHA-512                : chr "2533D682DB224F0D3BEA043A8A986DC1D341FBEFFD158CB97CD360190BE091F43CC6DBF07E6E985CC0DCE17ADC207A61AC9831BE9109920"| __truncated__
##  $ SSDEEP                 : chr "12288:g7LKf6QceJ83r69SOPdxouwUnSysbLY+YR2L7b+3l7E71rb/t:gsceJ83rESOlxJwUZsbLY+YR2Xa3l7E7"
##  $ TLSH                   : chr "T150F4281AE64719BDC8B2C230455B50327A31B945F332BF6B26C196311E42B1EA73FBE5"
##  $ insert-timestamp       : chr "1641133367.7063253"
##  $ mimetype               : chr "application/x-sharedlib"
##  $ source                 : chr "snap:LzZyskDFScZjJ3svKVr97ET36zgvJv27_303"
##  $ hashlookup:parent-total: int 153
##  $ parents                :'data.frame': 10 obs. of  17 variables:
##   ..$ SHA-1             : chr [1:10] "0006E05A9FC1F165A94713131592E4269DCB0B5D" "027EC67FDB1BCB3CA236FEAC0A47334ECE3F5BB0" "02ADDB9985B9F21F42072CEA4A3C1A97448C67AC" "05EAE0930E00C981FB9EE08BBA153CA6C310CB62" ...
##   ..$ snap-authority    : chr [1:10] "canonical" "canonical" NA "canonical" ...
##   ..$ snap-filename     : chr [1:10] "DjI3nhYmq6jeI4qguNI54pgbDZWbUo2N_52.snap" "bNNkzjNJvvbhGfm80hDhQTFdHzkfJEYB_4.snap" NA "AoHIZvYmMaLUOwSIY14G6RD36nnGpRq3_214.snap" ...
##   ..$ snap-id           : chr [1:10] "DjI3nhYmq6jeI4qguNI54pgbDZWbUo2N_52" "bNNkzjNJvvbhGfm80hDhQTFdHzkfJEYB_4" NA "AoHIZvYmMaLUOwSIY14G6RD36nnGpRq3_214" ...
##   ..$ snap-name         : chr [1:10] "jhaturanga" "bytecode-viewer" NA "cloudfprint" ...
##   ..$ snap-publisher-id : chr [1:10] "xDCnIDJdNukVUGgNlOk5dYRg7dxVwtOM" "DbgWP2gLdbVLZtWtjnQFZpnu8BGnqfob" NA "YF0blIQ11AAgIaVPKQSl87npE0GWZdNs" ...
##   ..$ snap-signkey      : chr [1:10] "BWDEoaqyr25nF5SNCvEv2v7QnM9QsfCc0PBMYD_i2NGSQ32EF2d4D0hqUel3m8ul" "BWDEoaqyr25nF5SNCvEv2v7QnM9QsfCc0PBMYD_i2NGSQ32EF2d4D0hqUel3m8ul" NA "BWDEoaqyr25nF5SNCvEv2v7QnM9QsfCc0PBMYD_i2NGSQ32EF2d4D0hqUel3m8ul" ...
##   ..$ snap-timestamp    : chr [1:10] "2021-03-16T09:47:40.710950Z" "2020-10-07T03:14:29.133097Z" NA "2019-07-09T04:22:45.935432Z" ...
##   ..$ source-url        : chr [1:10] "https://api.snapcraft.io/api/v1/snaps/download/DjI3nhYmq6jeI4qguNI54pgbDZWbUo2N_52.snap" "https://api.snapcraft.io/api/v1/snaps/download/bNNkzjNJvvbhGfm80hDhQTFdHzkfJEYB_4.snap" NA "https://api.snapcraft.io/api/v1/snaps/download/AoHIZvYmMaLUOwSIY14G6RD36nnGpRq3_214.snap" ...
##   ..$ FileSize          : chr [1:10] NA NA "613848" NA ...
##   ..$ MD5               : chr [1:10] NA NA "124A707963928961F17F873921B0DF13" NA ...
##   ..$ PackageDescription: chr [1:10] NA NA "Secure Sockets Layer toolkit - cryptographic utility\n This package is part of the OpenSSL project's implementa"| __truncated__ NA ...
##   ..$ PackageMaintainer : chr [1:10] NA NA "Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>" NA ...
##   ..$ PackageName       : chr [1:10] NA NA "openssl" NA ...
##   ..$ PackageSection    : chr [1:10] NA NA "utils" NA ...
##   ..$ PackageVersion    : chr [1:10] NA NA "1.1.1-1ubuntu2.1~18.04.13" NA ...
##   ..$ SHA-256           : chr [1:10] NA NA "E8E123812167819F0D1AD572C85094F13369413A6E3D1127E4A786CC0A31FD0D" NA ...
##  $ hashlookup:trust       : int 100
```

### Bulk lookups

``` r
hl_query(
  hash = c(
    "6E2F8616A01725DCB37BED0A2495AEB2",
    "8ED4B4ED952526D89899E723F3488DE4",
    "344428FA4BA313712E4CA9B16D089AC4"
  ),
  type = "md5"
) %>% 
  knitr::kable("markdown")
```

| crc32    | file_name                                                                                                      | file_size | md5                              | op_system_code | product_code | sha_1                                    | special_code | db              | insert_timestamp   | source |
|:---------|:---------------------------------------------------------------------------------------------------------------|:----------|:---------------------------------|:---------------|:-------------|:-----------------------------------------|:-------------|:----------------|:-------------------|:-------|
| E774FD92 | network                                                                                                        | 7279      | 6E2F8616A01725DCB37BED0A2495AEB2 | 362            | 8321         | 00000903319A8CE18A03DFA22C07C6CA43602061 |              | nsrl_legacy     | 1638742519.950259  | NSRL   |
| 7A5407CA | wow64_microsoft-windows-i..timezones.resources_31bf3856ad364e35_10.0.16299.579_de-de_f24979c73226184d.manifest | 2520      | 8ED4B4ED952526D89899E723F3488DE4 | 362            | 190742       | 00000079FD7AAC9B2F9C988C50750E1F50B27EB5 |              | nsrl_modern_rds | 1638572532.3165467 | NSRL   |
| 7516A25F | .text.\_ZNSt14overflow_errorC1ERKSs                                                                            | 33        | 344428FA4BA313712E4CA9B16D089AC4 | 362            | 219181       | 0000001FFEF4BE312BAB534ECA7AEAA3E4684D85 |              | nsrl_modern_rds | 1638572532.3063858 | NSRL   |

``` r
hl_query(
  hash = c(
    "FFFFFDAC1B1B4C513896C805C2C698D9688BE69F",
    "FFFFFF4DB8282D002893A9BAF00E9E9D4BA45E65",
    "FFFFFE4C92E3F7282C7502F1734B243FA52326FB"
  ),
  type = "sha1"
) %>% 
  knitr::kable("markdown")
```

| crc32    | file_name            | file_size | md5                              | op_system_code | product_code | sha_1                                    | special_code | db              | insert_timestamp   | source | sha_256                                                          | ssdeep                                                           | tlsh                                                                     | tar_gname | tar_uname |
|:---------|:---------------------|:----------|:---------------------------------|:---------------|:-------------|:-----------------------------------------|:-------------|:----------------|:-------------------|:-------|:-----------------------------------------------------------------|:-----------------------------------------------------------------|:-------------------------------------------------------------------------|:----------|:----------|
| CBD64CD9 | .rela.dyn            | 240       | 131312A96CAD4ACAA7E2631A34A0D47C | 362            | 163709       | FFFFFDAC1B1B4C513896C805C2C698D9688BE69F |              | nsrl_modern_rds | 1638670863.3919017 | NSRL   | NA                                                               | NA                                                               | NA                                                                       | NA        | NA        |
| 8654F11A | s_copypix.c          | 19541     | 559D049F44942683093A91BA19D0AF54 | 362            | 223222       | FFFFFF4DB8282D002893A9BAF00E9E9D4BA45E65 |              | nsrl_modern_rds | 1638670863.4064765 | NSRL   | 9B87A913B5D14CE8538C36B26669080A2A12941EA4C3EE38B2A518D02CC43F3A | 384:02YscBUiSYpskdI83vt6HlEezrM3bzQhMhgCaX:93cBUMF3vYHlEez6bF3aX | T1779297589AFF31228485A4FAB7429C1E7307C12B978BAE547DCE93A45F80178D5F4BE0 | wheel     | root      |
| 8E51A269 | 358.git2-msvstfs.dll | 65        | 9E4C165089CBA3653484C3F23F1CBC67 | 362            | 201317       | FFFFFE4C92E3F7282C7502F1734B243FA52326FB |              | nsrl_modern_rds | 1638670863.3929653 | NSRL   | NA                                                               | NA                                                               | NA                                                                       | NA        | NA        |

### Using provided file hash digest helpers

``` r
hl_query(
  hash = md5(system.file("samples/s_copypix.txt", package = "hashlookup")),
  type = "md5"
) %>% str()
## 'data.frame':    1 obs. of  9 variables:
##  $ file_name: chr "./usr/share/mesa-source/src/mesa/swrast/s_copypix.c"
##  $ file_size: chr "27759"
##  $ md5      : chr "6E5201FE4EF9785CDA9E66C40EA5CEF5"
##  $ sha_1    : chr "1E6784F93C728992CF12C9F8BA08D9FE9278C541"
##  $ sha_256  : chr "B9EC639217677CDF876D04AF53263B09495FCC8F0803AFEC339195F9D3CE1C6B"
##  $ ssdeep   : chr "384:P6B9UiS36xE96qssSMKMJqtHHlEHIzG3BdqxNhkcrb:w9UvjqNHlEHIzG3BdqxJrb"
##  $ tlsh     : chr "T11CC2965886FB22224097E0FAB7C7592E6206C13B9747AF547DCD63985FD0274A9B0BF0"
##  $ tar_gname: chr "wheel"
##  $ tar_uname: chr "root"

hl_query(
  hash = sha1(system.file("samples/s_copypix.txt", package = "hashlookup")),
  type = "sha1"
) %>% str()
## 'data.frame':    1 obs. of  9 variables:
##  $ file_name: chr "./usr/share/mesa-source/src/mesa/swrast/s_copypix.c"
##  $ file_size: chr "27759"
##  $ md5      : chr "6E5201FE4EF9785CDA9E66C40EA5CEF5"
##  $ sha_1    : chr "1E6784F93C728992CF12C9F8BA08D9FE9278C541"
##  $ sha_256  : chr "B9EC639217677CDF876D04AF53263B09495FCC8F0803AFEC339195F9D3CE1C6B"
##  $ ssdeep   : chr "384:P6B9UiS36xE96qssSMKMJqtHHlEHIzG3BdqxNhkcrb:w9UvjqNHlEHIzG3BdqxJrb"
##  $ tlsh     : chr "T11CC2965886FB22224097E0FAB7C7592E6206C13B9747AF547DCD63985FD0274A9B0BF0"
##  $ tar_gname: chr "wheel"
##  $ tar_uname: chr "root"

hl_query(
  hash = sha256(system.file("samples/s_copypix.txt", package = "hashlookup")),
  type = "sha256"
) %>% str()
## List of 12
##  $ FileName               : chr "./usr/share/mesa-source/src/mesa/swrast/s_copypix.c"
##  $ FileSize               : chr "27759"
##  $ MD5                    : chr "6E5201FE4EF9785CDA9E66C40EA5CEF5"
##  $ SHA-1                  : chr "1E6784F93C728992CF12C9F8BA08D9FE9278C541"
##  $ SHA-256                : chr "B9EC639217677CDF876D04AF53263B09495FCC8F0803AFEC339195F9D3CE1C6B"
##  $ SSDEEP                 : chr "384:P6B9UiS36xE96qssSMKMJqtHHlEHIzG3BdqxNhkcrb:w9UvjqNHlEHIzG3BdqxJrb"
##  $ TLSH                   : chr "T11CC2965886FB22224097E0FAB7C7592E6206C13B9747AF547DCD63985FD0274A9B0BF0"
##  $ tar:gname              : chr "wheel"
##  $ tar:uname              : chr "root"
##  $ hashlookup:parent-total: int 3
##  $ parents                :'data.frame': 3 obs. of  12 variables:
##   ..$ FileName          : chr [1:3] "https://ftp.lysator.liu.se/pub/OpenBSD//4.3//xenocara.tar.gz" NA "https://ftp.lysator.liu.se/pub/OpenBSD//4.4//xenocara.tar.gz"
##   ..$ MD5               : chr [1:3] "8194DE4034BC50A8733A2C1D443A6147" "8F1D32C36AB321C3082C9E84C1505B90" "BA16D5AB00081354A29C8420C23D0F55"
##   ..$ SHA-1             : chr [1:3] "AB85A2092A421DFCECBF4FFDCEE1CC92202E96EB" "100EFFEAAE1D3164C5902498EB5FE06D8D53699E" "D60BCB2011A5C28A1A57AEEE8ACD62F9F9F99671"
##   ..$ SHA-256           : chr [1:3] "57C81EC8EE699F39EBA3290AD4804E463F6F38A67E06201804A27BE5D581F85E" "2512C69D16CA2D5DFE1A165BBC353894B3C20D407784C0F0BD2C880DFE0A6338" "1DE3A1C09DF47AFE80EA1BECFDA8E1E6DAFFFCA1A6D755402E42AFC0FD54C29B"
##   ..$ SSDEEP            : chr [1:3] "3145728:M1EOqmnrAjV/d/xfKQzPL6b2ajFjsxIxSnNt82LOVp/J:M1nnrAjV/rSs+bJ4IsNt82LwlJ" NA "3145728:1yZBt9EzOk6/1+uUOLmLjhjHof+SpoEkVF+WpB:1yZT9EzOkO1D+oWsjU3B"
##   ..$ TLSH              : chr [1:3] "T18338335AFC638F431746FE3F93148CBC5B0A6911DD1AF0AD464C1BEA66278B4C90D8E9" NA "T16038338DEDD2DF11BB1BBA6D31548C7C979E31826A55FE70490C23209D22C10EE6E8ED"
##   ..$ FileSize          : chr [1:3] NA "1542102" NA
##   ..$ PackageDescription: chr [1:3] NA "Mesa software rasteriser source -- development files\n This package contains the source to the Mesa software ra"| __truncated__ NA
##   ..$ PackageMaintainer : chr [1:3] NA "Ubuntu Core Developers <ubuntu-devel@lists.ubuntu.com>" NA
##   ..$ PackageName       : chr [1:3] NA "mesa-swx11-source" NA
##   ..$ PackageSection    : chr [1:3] NA "libdevel" NA
##   ..$ PackageVersion    : chr [1:3] NA "7.0.3~rc2-1ubuntu3" NA
##  $ hashlookup:trust       : int 65
```

## hashlookup Metrics

| Lang | # Files |  (%) | LoC |  (%) | Blank lines |  (%) | # Lines |  (%) |
|:-----|--------:|-----:|----:|-----:|------------:|-----:|--------:|-----:|
| R    |       8 | 0.36 |  84 | 0.26 |          29 | 0.21 |     104 | 0.34 |
| Rmd  |       1 | 0.05 |  42 | 0.13 |          30 | 0.22 |      48 | 0.16 |
| YAML |       2 | 0.09 |  35 | 0.11 |          10 | 0.07 |       2 | 0.01 |
| SUM  |      11 | 0.50 | 161 | 0.50 |          69 | 0.50 |     154 | 0.50 |

clock Package Metrics for hashlookup

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
