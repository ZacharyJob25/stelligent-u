#Admittedly I got lazy here because I would rather NEVER
#let this into production. Cloudformation s3 rollback is okay
#as term prot is an easy guard that isn't restrictive.

aws s3 rm \
	s3://$1 \
	--recursive

#aws s3api delete-objects \
#	--bucket $1 \
#	--region $2 \
#	--delete '{"Objects":[{<INSERT AWK>}]}'
#

aws s3api delete-bucket \
	--bucket $1 \
	--region $2
