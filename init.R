options(repos = "http://taiwanrusergroup.github.io/R")
local({
  install.packages('DSC2015R')
  pkgs.remote <- available.packages()
  pkgs.local <- installed.packages()
  pkgs <- intersect(rownames(pkgs.remote), rownames(pkgs.local))
  pkgs.outdated <- package_version(pkgs.local[pkgs, "Version"]) < package_version(pkgs.remote[pkgs, "Version"])
  if (sum(pkgs.outdated) > 0) install.packages(names(which(pkgs.outdated)))
})