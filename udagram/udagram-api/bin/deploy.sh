cd www
eb init udagram-api --region us-east-1 --platform "node.js-14"

# this command will set env variables
eb setenv POSTGRES_HOST=database-1.crrpbvktsrdq.us-east-1.rds.amazonaws.com POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres POSTGRES_DB=tempDB AWS_DEFAULT_REGION=us-east-1 AWS_PROFILE=default AWS_BUCKET=elasticbeanstalk-us-east-1-665058644940 URL=http://udgram-sals.s3-website-us-east-1.amazonaws.com/ JWT_SECRET=ToP-SeCeRt AWS_ACCESS_KEY_ID=AKIAZVWEVSPGOJKZQ2O5 AWS_SECRET_ACCESS_KEY=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 EB_APP_NAME=udagram-api EB_ENV_NAME=udagram-api-dev 

eb deploy udagram-api-dev