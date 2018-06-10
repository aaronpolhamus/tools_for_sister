PACKAGE_DIRECTORY <- "C:\\path\that\holds\your\source\binaries\(probablyathumbdrive)"

packages_to_install <- dir(PACKAGE_DIRECTORY)
for(package in packages_to_install){
  package_path <- file.path(PACKAGE_DIRECTORY, package)
  print(sprintf("Installing %s using this as the full path: %s", package, package_path))
  install.packages(package_path, repos = NULL, type="source")
}
