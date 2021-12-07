#I prefer granular S3 commands to ensure repeatable settings
#I added in the basics as well

echo "Creating bucket $1 in $2..."

aws s3api create-bucket \
	--acl private \
	--bucket $1 \
	--region $2 \
	--create-bucket-configuration LocationConstraint=$2

echo "Setting encryption..."

aws s3api put-bucket-encryption \
	--bucket $1 \
	--region $2 \
	--server-side-encryption-configuration '{"Rules": [{"ApplyServerSideEncryptionByDefault": {"SSEAlgorithm": "AES256"}}]}'

echo "Restricting access..."

aws s3api put-public-access-block \
	--bucket $1 \
	--region $2 \
	--public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true" \
