require(tools) #..install this if you don't have it

OUTPUT_DIRECTORY <- "C:\\path\to\where\you\want\to\put\these\binaries\(likeathumbdrive)"

packages_you_want <- c( #..A few samples. Put your own in
  "plyr",
  "dplyr",
  "readr",
  "scales",
  "ggplot2",
  "ranger"
)

dependencies_list <- c()
for(package in packages_you_want){
  print(sprintf("getting dependencies for %s", package))
  dependencies_list <- c(dependencies_list, package_dependencies(package)[[1]])
}

unique_package_list <- unique(dependencies_list)
for(package_to_download in unique_package_list){
  print(sprintf("download %s binary to %s", package, OUTPUT_DIRECTORY))
  download.packages(pkgs = package_to_download, destdir = "~/Desktop/test")
}

