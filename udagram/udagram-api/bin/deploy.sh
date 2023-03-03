cd www
# check if the env variables in eb env have been set or not yet
if [[ -z "$AWS_ACCESS_KEY_ID" ]]; then
        echo "AWS_ACCESS_KEY_ID is not set and so the others"
        eb list
        eb use $EB_ENV_NAME
        # setting env variables in eb env
        eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB
        eb setenv POSTGRES_HOST=$POSTGRES_HOST
        eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
        eb setenv AWS_BUCKET=$AWS_BUCKET
        eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE
        eb setenv JWT_SECRET=$JWT_SECRET
else
    echo "AWS_ACCESS_KEY_ID has a value"
fi


eb deploy $EB_ENV_NAME

cd ..
