pkg_file <- function(...) {
  retval <- system.file(..., package = .packageName)
  retval <- normalizePath(retval)
  cat(sprintf("%s\n", retval))
  retval
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
  cat("
1: R swirl (DBoy) 2: R Basic (Ning) 3: R Basic (Noah)\n4: R ETL (aha) 5: Visualization (Kyle, Mansun, Ben)
6: OpenCPU 7: Time Series Clustering 8: Quantstrats 9: R Text Mining 10: Baseball
11: Crawler 12: Rcpp 13: recharts
Please enter the slide number:
      ")
  switch(readline(),
         "1" = browseURL(pkg_file("basic/swirl/slides/RBasic0.html")),
         "2" = browseURL(pkg_file("basic/swirl/slides/RBasic1.html")),
         "3" = browseURL(pkg_file("basic/swirl/slides/RBasic2.html")),
         "4" = browseURL(pkg_file("etl/slide/index.html")),
         "5" = browseURL(pkg_file("visualization/index.html")),
         "6" = browseURL("https://docs.google.com/presentation/d/1VlmgZ5pTjmOf-qSa2iLWpeas12NxTzx3nIQLJiLn8YQ/edit?usp=sharing"),
         "7" = browseURL("https://docs.google.com/presentation/d/180wT8FunXbGFGqj8Kv3p7mtHJ7g-BJt9XipRIlmNMEE/edit?usp=sharing"),
         "8" = browseURL("https://docs.google.com/presentation/d/16xjdjXf6hSdpV0hZDjNth9LdyVMVKkXs5WZHg6IFCTU/edit?usp=sharing"),
         "9" = browseURL(pkg_file("show/RTextMining/lightingTalk/index.html")),
         "10" = browseURL(pkg_file("show/baseball/index.html")),
         "11" = browseURL(pkg_file("show/crawler/index.html")),
         "12" = browseURL(pkg_file("show/rcpp/index.html")),
         "13" = browseURL(pkg_file("show/recharts/recharts.html"))
         )
}

demo_project <- function() {
  browseURL(pkg_file("project/demo1.R"))
}