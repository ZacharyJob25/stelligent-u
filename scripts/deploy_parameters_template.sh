echo USING:: ${@:3}

aws cloudformation deploy \
  --template-file $1 \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM \
  --stack-name $2 \
	--parameter-overrides ${@:3}
