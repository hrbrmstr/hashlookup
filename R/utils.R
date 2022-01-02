comma_pad <- function(x, n) {

  stri_pad_left(
    str = scales::comma(x, 1),
    width = n,
    pad = " "
  )

}