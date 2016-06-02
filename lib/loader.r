Loader <- R6Class("Loader",
  public = list(
    logger = NA,
    bucket_name = NA,
    initialize = function(bucket_name, logger) {
      if (missing(logger)) logger = Logger$new()
      self$logger = logger
      if (!bucket_exists(bucket_name)) {
        self$logger$debug("Unknown bucket", bucket_name)
      }
      self$bucket_name = bucket_name
    },
    load = function(key) {
      s3readRDS(bucket=self$bucket_name, object=key)
    },
    save = function(data, as) {
      s3saveRDS(data, bucket=self$bucket_name, object=as)
    }
  )
)
