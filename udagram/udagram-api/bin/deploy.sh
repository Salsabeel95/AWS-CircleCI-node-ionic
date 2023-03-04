cd www

# check if the env variables in eb env have been set or not yet
if [[ ! -v POSTGRES_HOST ]]; then
        echo "POSTGRES_HOST is not set and so the others"
        eb list
        eb use $EB_ENV_NAME
        # setting env variables in eb env
        echo "setting env variables in eb env"
        eb setenv POSTGRES_HOST=database-1.crrpbvktsrdq.us-east-1.rds.amazonaws.com  
        eb setenv POSTGRES_USERNAME=postgres  
        eb setenv POSTGRES_PASSWORD=postgres  
        eb setenv POSTGRES_DB=postgres 
        eb setenv AWS_DEFAULT_REGION=us-east-1 
        eb setenv AWS_PROFILE=default 
        eb setenv AWS_BUCKET=elasticbeanstalk-us-east-1-665058644940 
        eb setenv URL=http://udagram-sals.s3-website-us-east-1.amazonaws.com 
        eb setenv JWT_SECRET=ToP-SeCeRt 
        eb setenv AWS_ACCESS_KEY_ID=AKIAZVWEVSPGLVXVXT5K 
        eb setenv AWS_SECRET_ACCESS_KEY=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
else
    echo "POSTGRES_HOST has a value so the others"
fi


echo "starting deploy ...."
eb deploy $EB_ENV_NAME

cd ..
