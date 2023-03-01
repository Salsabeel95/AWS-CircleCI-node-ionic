cd www
        # eb init udagram-api-2 --region us-east-1 --platform "node.js-14"
eb list
eb use udagram-api-2-dev2
# setting env variables in eb env
eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres POSTGRES_DB=udgDB
eb setenv POSTGRES_HOST=database-1.crrpbvktsrdq.us-east-1.rds.amazonaws.com
eb setenv AWS_ACCESS_KEY_ID=AKIAZVWEVSPGI6XE2QHP AWS_SECRET_ACCESS_KEY=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
eb setenv AWS_BUCKET=elasticbeanstalk-us-east-1-665058644940
eb setenv AWS_DEFAULT_REGION=us-east-1 AWS_PROFILE=default
eb setenv URL=http://udagram-sals.s3-website-us-east-1.amazonaws.com/ 
eb setenv JWT_SECRET=ToP-SeCeRt


# eb setenv POSTGRES_USERNAME=$POSTGRES_USERNAME POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_DB=$POSTGRES_DB
# eb setenv POSTGRES_HOST=$POSTGRES_HOST
# eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
# eb setenv AWS_BUCKET=$AWS_BUCKET
# eb setenv AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_PROFILE=$AWS_PROFILE
# eb setenv URL=$URL JWT_SECRET=$JWT_SECRET
eb deploy 
# cd ..
