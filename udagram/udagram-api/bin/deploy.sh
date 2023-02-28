cd www
        # eb init udagram-api --region us-east-1 --platform "node.js-14"
        # eb use udagram-api-env
# set env variables
eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB
eb setenv POSTGRES_HOST=$POSTGRES_HOST
eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
eb setenv AWS_BUCKET=$AWS_BUCKET
eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE
# eb setenv URL=$URL 
eb setenv JWT_SECRET=$JWT_SECRET
# http://udagram-sals.s3-website-us-east-1.amazonaws.com/ 

eb deploy $EB_ENV_NAME

# cd ..