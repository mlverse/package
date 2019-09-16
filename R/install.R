#' Install TensorFlow, Spark and MLflow
#'
#' Installs all 'mlverse' runtime dependencies.
#'
#' @export
install_mlverse <- function() {
  sparklyr::spark_install(version = "2.3")
  tensorflow::install_tensorflow()
  keras::install_keras()
  mlflow::install_mlflow()
}
