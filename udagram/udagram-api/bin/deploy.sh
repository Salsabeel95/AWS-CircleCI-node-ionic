cd www
        # eb init udagram-api --region us-east-1 --platform "node.js-14"
        # eb use udagram-api-env
# set env variables
eb setenv POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres POSTGRES_DB=udgDB
eb setenv POSTGRES_HOST=database-1.crrpbvktsrdq.us-east-1.rds.amazonaws.com
eb setenv AWS_ACCESS_KEY_ID=AKIAZVWEVSPGDAXBGIRK AWS_SECRET_ACCESS_KEY=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
eb setenv AWS_BUCKET=elasticbeanstalk-us-east-1-665058644940
eb setenv AWS_DEFAULT_REGION=us-east-1 AWS_PROFILE=default
eb setenv URL=http://udagram-sals.s3-website-us-east-1.amazonaws.com/ JWT_SECRET=ToP-SeCeRt

eb deploy udagram-api-env

# cd ..