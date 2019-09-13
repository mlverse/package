#' Install Multiverse
#'
#' Installs all multiverse runtime dependencies.
#'
#' @export
install_multiverse <- function() {
  sparklyr::spark_install(version = "2.3")
  tensorflow::install_tensorflow()
  keras::install_keras()
  mlflow::install_mlflow()
}
