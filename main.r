require(R6, quietly = TRUE)
if (!require(aws.s3, quietly = TRUE)){
  install.packages(
    "aws.s3",
    repos = c(getOption("repos"), "http://cloudyr.github.io/drat")
  )
}
source('lib/logger.r')
source('lib/loader.r')
loader = Loader$new('origin-poc-bucket')
data = loader$load('data_1.rds')
print("data:")
print(data)
