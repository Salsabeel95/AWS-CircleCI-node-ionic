cd www

# check if the env variables in eb env have been set or not yet
if [[ ! -v POSTGRES_HOST ]]; then
        echo "POSTGRES_HOST is not set and so the others"
        eb list
        eb use $EB_ENV_NAME
        # setting env variables in eb env
        echo "setting env variables in eb env"
        eb setenv POSTGRES_HOST=$POSTGRES_HOST 
        eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME  
        eb setenv POSTGRES_PASSWORD=$POSTGRES_PASSWORD  
        eb setenv POSTGRES_DB=$POSTGRES_DB 
        eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
        eb setenv AWS_PROFILE=$AWS_PROFILE 
        eb setenv AWS_BUCKET=$AWS_BUCKET 
        eb setenv URL=$URL
        eb setenv JWT_SECRET=$JWT_SECRET 
        eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID 
        eb setenv AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
else
    echo "POSTGRES_HOST has been set so the others"
fi


echo "starting deploy ...."
eb deploy $EB_ENV_NAME

cd ..
