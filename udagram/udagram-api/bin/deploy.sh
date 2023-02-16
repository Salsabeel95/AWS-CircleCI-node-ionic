cd www
eb init udagram-api --region us-east-1 --platform "node.js-14"
cd ..
# this command will set every variable set already on the .env file
eb setenv `cat .env | sed '/^#/ d' | sed '/^$/ d'`
cd www
eb deploy udagram-api-dev