#' Install TensorFlow, Spark and MLflow
#'
#' Installs all 'mlverse' runtime dependencies.
#'
#' @param version The version to install. Currently \code{"auto"} or
#'   \code{"gpu"}.
#'
#' @export
install_mlverse <- function(version = c("auto", "gpu")) {
  tensorflow_version <- if (identical(version, "gpu")) "gpu" else NULL

  sparklyr::spark_install(version = "2.3")
  tensorflow::install_tensorflow(version = tensorflow_version)
  keras::install_keras()
  mlflow::install_mlflow()
}
