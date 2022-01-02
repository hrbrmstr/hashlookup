
[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Signed
by](https://img.shields.io/badge/Keybase-Verified-brightgreen.svg)](https://keybase.io/hrbrmstr)
![Signed commit
%](https://img.shields.io/badge/Signed_Commits-100%25-lightgrey.svg)
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
library(gt)

# current version
packageVersion("hashlookup")
## [1] '0.1.0'
```

### Hash lookup API info

``` r
hl_info()
## Hash lookup API version: 1.2; NSRL Version: December 2021
## Total keys: 4,244,237,706
## Modern RDS:   192,677,749
##     Legacy:   113,737,918
##        iOS:       931,242
##    Android:    41,589,780
```

### Individual lookups

``` r
hl_query("8ED4B4ED952526D89899E723F3488DE4", "md5") %>% gt::gt()
```

<div id="ytjjpaldsy" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#ytjjpaldsy .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#ytjjpaldsy .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ytjjpaldsy .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#ytjjpaldsy .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#ytjjpaldsy .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ytjjpaldsy .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#ytjjpaldsy .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#ytjjpaldsy .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#ytjjpaldsy .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#ytjjpaldsy .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#ytjjpaldsy .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#ytjjpaldsy .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#ytjjpaldsy .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#ytjjpaldsy .gt_from_md > :first-child {
  margin-top: 0;
}

#ytjjpaldsy .gt_from_md > :last-child {
  margin-bottom: 0;
}

#ytjjpaldsy .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#ytjjpaldsy .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#ytjjpaldsy .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ytjjpaldsy .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#ytjjpaldsy .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#ytjjpaldsy .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#ytjjpaldsy .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#ytjjpaldsy .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#ytjjpaldsy .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ytjjpaldsy .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#ytjjpaldsy .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#ytjjpaldsy .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#ytjjpaldsy .gt_left {
  text-align: left;
}

#ytjjpaldsy .gt_center {
  text-align: center;
}

#ytjjpaldsy .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#ytjjpaldsy .gt_font_normal {
  font-weight: normal;
}

#ytjjpaldsy .gt_font_bold {
  font-weight: bold;
}

#ytjjpaldsy .gt_font_italic {
  font-style: italic;
}

#ytjjpaldsy .gt_super {
  font-size: 65%;
}

#ytjjpaldsy .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">crc32</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_size</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">md5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">op_system_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">product_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">sha_1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">special_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">db</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">insert_timestamp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">source</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">7A5407CA</td>
<td class="gt_row gt_left">wow64_microsoft-windows-i..timezones.resources_31bf3856ad364e35_10.0.16299.579_de-de_f24979c73226184d.manifest</td>
<td class="gt_row gt_left">2520</td>
<td class="gt_row gt_left">8ED4B4ED952526D89899E723F3488DE4</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">190742</td>
<td class="gt_row gt_left">00000079FD7AAC9B2F9C988C50750E1F50B27EB5</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_modern_rds</td>
<td class="gt_row gt_left">1638572532.3165467</td>
<td class="gt_row gt_left">NSRL</td></tr>
  </tbody>
  
  
</table>
</div>

``` r
hl_query("FFFFFDAC1B1B4C513896C805C2C698D9688BE69F", "sha1") %>% gt::gt()
```

<div id="buiqrnyrbn" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#buiqrnyrbn .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#buiqrnyrbn .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#buiqrnyrbn .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#buiqrnyrbn .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#buiqrnyrbn .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#buiqrnyrbn .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#buiqrnyrbn .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#buiqrnyrbn .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#buiqrnyrbn .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#buiqrnyrbn .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#buiqrnyrbn .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#buiqrnyrbn .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#buiqrnyrbn .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#buiqrnyrbn .gt_from_md > :first-child {
  margin-top: 0;
}

#buiqrnyrbn .gt_from_md > :last-child {
  margin-bottom: 0;
}

#buiqrnyrbn .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#buiqrnyrbn .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#buiqrnyrbn .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#buiqrnyrbn .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#buiqrnyrbn .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#buiqrnyrbn .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#buiqrnyrbn .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#buiqrnyrbn .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#buiqrnyrbn .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#buiqrnyrbn .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#buiqrnyrbn .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#buiqrnyrbn .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#buiqrnyrbn .gt_left {
  text-align: left;
}

#buiqrnyrbn .gt_center {
  text-align: center;
}

#buiqrnyrbn .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#buiqrnyrbn .gt_font_normal {
  font-weight: normal;
}

#buiqrnyrbn .gt_font_bold {
  font-weight: bold;
}

#buiqrnyrbn .gt_font_italic {
  font-style: italic;
}

#buiqrnyrbn .gt_super {
  font-size: 65%;
}

#buiqrnyrbn .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">crc32</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_size</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">md5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">op_system_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">product_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">sha_1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">special_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">db</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">insert_timestamp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">source</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">CBD64CD9</td>
<td class="gt_row gt_left">.rela.dyn</td>
<td class="gt_row gt_left">240</td>
<td class="gt_row gt_left">131312A96CAD4ACAA7E2631A34A0D47C</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">163709</td>
<td class="gt_row gt_left">FFFFFDAC1B1B4C513896C805C2C698D9688BE69F</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_modern_rds</td>
<td class="gt_row gt_left">1638670863.3919017</td>
<td class="gt_row gt_left">NSRL</td></tr>
  </tbody>
  
  
</table>
</div>

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
  gt::gt()
```

<div id="sjdehecjeq" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#sjdehecjeq .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#sjdehecjeq .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#sjdehecjeq .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#sjdehecjeq .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#sjdehecjeq .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#sjdehecjeq .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#sjdehecjeq .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#sjdehecjeq .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#sjdehecjeq .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#sjdehecjeq .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#sjdehecjeq .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#sjdehecjeq .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#sjdehecjeq .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#sjdehecjeq .gt_from_md > :first-child {
  margin-top: 0;
}

#sjdehecjeq .gt_from_md > :last-child {
  margin-bottom: 0;
}

#sjdehecjeq .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#sjdehecjeq .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#sjdehecjeq .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#sjdehecjeq .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#sjdehecjeq .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#sjdehecjeq .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#sjdehecjeq .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#sjdehecjeq .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#sjdehecjeq .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#sjdehecjeq .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#sjdehecjeq .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#sjdehecjeq .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#sjdehecjeq .gt_left {
  text-align: left;
}

#sjdehecjeq .gt_center {
  text-align: center;
}

#sjdehecjeq .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#sjdehecjeq .gt_font_normal {
  font-weight: normal;
}

#sjdehecjeq .gt_font_bold {
  font-weight: bold;
}

#sjdehecjeq .gt_font_italic {
  font-style: italic;
}

#sjdehecjeq .gt_super {
  font-size: 65%;
}

#sjdehecjeq .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">crc32</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_size</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">md5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">op_system_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">product_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">sha_1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">special_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">db</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">insert_timestamp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">source</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">E774FD92</td>
<td class="gt_row gt_left">network</td>
<td class="gt_row gt_left">7279</td>
<td class="gt_row gt_left">6E2F8616A01725DCB37BED0A2495AEB2</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">8321</td>
<td class="gt_row gt_left">00000903319A8CE18A03DFA22C07C6CA43602061</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_legacy</td>
<td class="gt_row gt_left">1638742519.950259</td>
<td class="gt_row gt_left">NSRL</td></tr>
    <tr><td class="gt_row gt_left">7A5407CA</td>
<td class="gt_row gt_left">wow64_microsoft-windows-i..timezones.resources_31bf3856ad364e35_10.0.16299.579_de-de_f24979c73226184d.manifest</td>
<td class="gt_row gt_left">2520</td>
<td class="gt_row gt_left">8ED4B4ED952526D89899E723F3488DE4</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">190742</td>
<td class="gt_row gt_left">00000079FD7AAC9B2F9C988C50750E1F50B27EB5</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_modern_rds</td>
<td class="gt_row gt_left">1638572532.3165467</td>
<td class="gt_row gt_left">NSRL</td></tr>
    <tr><td class="gt_row gt_left">7516A25F</td>
<td class="gt_row gt_left">.text._ZNSt14overflow_errorC1ERKSs</td>
<td class="gt_row gt_left">33</td>
<td class="gt_row gt_left">344428FA4BA313712E4CA9B16D089AC4</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">219181</td>
<td class="gt_row gt_left">0000001FFEF4BE312BAB534ECA7AEAA3E4684D85</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_modern_rds</td>
<td class="gt_row gt_left">1638572532.3063858</td>
<td class="gt_row gt_left">NSRL</td></tr>
  </tbody>
  
  
</table>
</div>

``` r
hl_query(
  hash = c(
    "FFFFFDAC1B1B4C513896C805C2C698D9688BE69F",
    "FFFFFF4DB8282D002893A9BAF00E9E9D4BA45E65",
    "FFFFFE4C92E3F7282C7502F1734B243FA52326FB"
  ),
  type = "sha1"
) %>% 
  gt::gt()
```

<div id="hgvrrkbfqh" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>html {
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#hgvrrkbfqh .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#hgvrrkbfqh .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hgvrrkbfqh .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#hgvrrkbfqh .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#hgvrrkbfqh .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hgvrrkbfqh .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#hgvrrkbfqh .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#hgvrrkbfqh .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#hgvrrkbfqh .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#hgvrrkbfqh .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#hgvrrkbfqh .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#hgvrrkbfqh .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#hgvrrkbfqh .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#hgvrrkbfqh .gt_from_md > :first-child {
  margin-top: 0;
}

#hgvrrkbfqh .gt_from_md > :last-child {
  margin-bottom: 0;
}

#hgvrrkbfqh .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#hgvrrkbfqh .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#hgvrrkbfqh .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hgvrrkbfqh .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#hgvrrkbfqh .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#hgvrrkbfqh .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#hgvrrkbfqh .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

#hgvrrkbfqh .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#hgvrrkbfqh .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hgvrrkbfqh .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#hgvrrkbfqh .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#hgvrrkbfqh .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

#hgvrrkbfqh .gt_left {
  text-align: left;
}

#hgvrrkbfqh .gt_center {
  text-align: center;
}

#hgvrrkbfqh .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#hgvrrkbfqh .gt_font_normal {
  font-weight: normal;
}

#hgvrrkbfqh .gt_font_bold {
  font-weight: bold;
}

#hgvrrkbfqh .gt_font_italic {
  font-style: italic;
}

#hgvrrkbfqh .gt_super {
  font-size: 65%;
}

#hgvrrkbfqh .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
<table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">crc32</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_name</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">file_size</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">md5</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">op_system_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">product_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">sha_1</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">special_code</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">db</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">insert_timestamp</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">source</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">sha_256</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">ssdeep</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">tlsh</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">tar_gname</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">tar_uname</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">CBD64CD9</td>
<td class="gt_row gt_left">.rela.dyn</td>
<td class="gt_row gt_left">240</td>
<td class="gt_row gt_left">131312A96CAD4ACAA7E2631A34A0D47C</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">163709</td>
<td class="gt_row gt_left">FFFFFDAC1B1B4C513896C805C2C698D9688BE69F</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_modern_rds</td>
<td class="gt_row gt_left">1638670863.3919017</td>
<td class="gt_row gt_left">NSRL</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td></tr>
    <tr><td class="gt_row gt_left">8654F11A</td>
<td class="gt_row gt_left">s_copypix.c</td>
<td class="gt_row gt_left">19541</td>
<td class="gt_row gt_left">559D049F44942683093A91BA19D0AF54</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">223222</td>
<td class="gt_row gt_left">FFFFFF4DB8282D002893A9BAF00E9E9D4BA45E65</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_modern_rds</td>
<td class="gt_row gt_left">1638670863.4064765</td>
<td class="gt_row gt_left">NSRL</td>
<td class="gt_row gt_left">9B87A913B5D14CE8538C36B26669080A2A12941EA4C3EE38B2A518D02CC43F3A</td>
<td class="gt_row gt_left">384:02YscBUiSYpskdI83vt6HlEezrM3bzQhMhgCaX:93cBUMF3vYHlEez6bF3aX</td>
<td class="gt_row gt_left">T1779297589AFF31228485A4FAB7429C1E7307C12B978BAE547DCE93A45F80178D5F4BE0</td>
<td class="gt_row gt_left">wheel</td>
<td class="gt_row gt_left">root</td></tr>
    <tr><td class="gt_row gt_left">8E51A269</td>
<td class="gt_row gt_left">358.git2-msvstfs.dll</td>
<td class="gt_row gt_left">65</td>
<td class="gt_row gt_left">9E4C165089CBA3653484C3F23F1CBC67</td>
<td class="gt_row gt_left">362</td>
<td class="gt_row gt_left">201317</td>
<td class="gt_row gt_left">FFFFFE4C92E3F7282C7502F1734B243FA52326FB</td>
<td class="gt_row gt_left"></td>
<td class="gt_row gt_left">nsrl_modern_rds</td>
<td class="gt_row gt_left">1638670863.3929653</td>
<td class="gt_row gt_left">NSRL</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td>
<td class="gt_row gt_left">NA</td></tr>
  </tbody>
  
  
</table>
</div>

## hashlookup Metrics

| Lang | # Files |  (%) | LoC |  (%) | Blank lines |  (%) | # Lines |  (%) |
|:-----|--------:|-----:|----:|-----:|------------:|-----:|--------:|-----:|
| R    |       7 | 0.35 |  75 | 0.27 |          27 | 0.21 |      67 | 0.29 |
| YAML |       2 | 0.10 |  35 | 0.12 |          10 | 0.08 |       2 | 0.01 |
| Rmd  |       1 | 0.05 |  31 | 0.11 |          26 | 0.21 |      45 | 0.20 |
| SUM  |      10 | 0.50 | 141 | 0.50 |          63 | 0.50 |     114 | 0.50 |

clock Package Metrics for hashlookup

## Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
