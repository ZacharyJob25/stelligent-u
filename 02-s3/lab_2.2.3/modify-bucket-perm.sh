#Note, provided as example on recording - may show up elsewhere
#
#NOTES:
#zachary.job.labs is hard coded to move faster

aws s3api delete-public-access-block \
	--bucket $1

aws s3api put-bucket-policy \
	--bucket $1 \
	--policy ./iam.json

aws s3api put-bucket-acl \
	--bucket $1 \
	--acl authenticated-read
  --profile zachary.job.labs
