pkg_file <- function(...) {
  system.file(..., package = .packageName)
}

install_course <- function() {
  library(swirl)
  if (!file.exists(get_swirl_option("courses_dir"))) {
    dir.create(get_swirl_option("courses_dir"), recursive = TRUE)
  }
  cat("Installing swirl course for R basic...\n")
  install_course_directory(pkg_file("basic/swirl/DSC2015"))
  cat("Installing swirl course for R ETL\n")
  install_course_directory(pkg_file("etl/swirl/DSC2015"))
  cat("Installing swirl course for R Visualization\n")
  install_course_directory(pkg_file("visualization/DSC2015"))
}

slide <- function() {
  cat("1: R swirl (DBoy) 2: R Basic (Ning) 3: R Basic (Noah)\n4: R ETL (aha) 5: Visualization (Kyle, Mansun, Ben)\n")
  switch(readline(),
         "1" = browseURL(pkg_file("basic/swirl/index.html")),
         "2" = browseURL(pkg_file("basic/ForBasicSharing.html")),
         "3" = stop("TODO"),
         "4" = browseURL(pkg_file("etl/slide/index.html")),
         "5" = browseURL(pkg_file("visualization/index.html")))
}