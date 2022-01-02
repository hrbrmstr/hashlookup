httr::user_agent(
  sprintf(
    "hashlookup R package v%s: (<%s>)",
    utils::packageVersion("hashlookup"),
    utils::packageDescription("hashlookup")$URL
  )
) -> .HASHLOOKUP_UA
