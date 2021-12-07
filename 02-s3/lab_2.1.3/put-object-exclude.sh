#Typically I would do this by filtering at CLI
#the exercise asks that I explicitly use sync exclude
#
#Pulled *verbatim from the man pages

aws s3 sync \
	$1 $2 \
	--sse AES256 \
	--exclude $3
