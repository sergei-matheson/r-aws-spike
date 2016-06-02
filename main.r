require(R6, quietly = TRUE)
require(aws.s3, quietly = TRUE)

source('lib/logger.r')
source('lib/loader.r')
loader = Loader$new('origin-poc-bucket')
data = loader$load('data_1.rds')
print("data:")
print(data)
