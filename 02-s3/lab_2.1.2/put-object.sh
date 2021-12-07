aws s3api put-object \
	--bucket $1 \
	--key $2/$3 \
	--server-side-encryption AES256 \
	--body $3

