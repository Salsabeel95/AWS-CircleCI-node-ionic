cd www

eb list
eb use $EB_ENV_NAME

# setting env variables in eb env
# eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB
# eb setenv POSTGRES_HOST=$POSTGRES_HOST
# eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
# eb setenv AWS_BUCKET=$AWS_BUCKET
# eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE
# eb setenv JWT_SECRET=$JWT_SECRET


eb deploy 

cd ..
