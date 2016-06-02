Logger <- R6Class("Logger",
  public = list(
    level = NA,
    initialize = function(level) {
      if (missing(level)) level = self$levels$DEBUG
      self$level = level

    },
    debug = function(...) {
      private$log(list(...), level=Logger$LEVELS$DEBUG)
    }
  ),
  private = list(
    log = function(messages, level) {
      cat(paste(c(date(), private$level_name(level), ":", messages, "\n", recursive=TRUE), sep=""))
    },
    level_name = function(level) {
      Logger$LEVEL_NAMES[[level]]
    }
  )
)
f = function () {
  Logger$LEVELS = list(
    DEBUG = 1, INFO = 2, WARN = 3, ERROR = 4, FATAL = 5, UNKNOWN = 6
  )
  Logger$LEVEL_NAMES = list()
  level_names = names(Logger$LEVELS)
  for (num in Logger$LEVELS) {
    Logger$LEVEL_NAMES[num] = level_names[num]
  }
}
f()
