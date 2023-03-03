     # 1. Create a new bucket with a unique name
# aws s3 mb s3://$WEB_BUCKET_NAME 
    # 2. Enable public access to the bucket
# aws s3api put-public-access-block \
    # --bucket $WEB_BUCKET_NAME \
    # --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"
    # 3. Update the bucket policy for public read access:
# aws s3api put-bucket-policy \
#   --bucket $WEB_BUCKET_NAME \
#   --policy "{
#   \"Version\": \"2012-10-17\",
#   \"Statement\": [
#       {
#           \"Sid\": \"PublicReadGetObject\",
#           \"Effect\": \"Allow\",
#           \"Principal\": \"*\",
#           \"Action\": \"s3:GetObject\",
#           \"Resource\": \"arn:aws:s3:::$WEB_BUCKET_NAME/*\"
#       }
#   ]
# }"
    # 4. Enable the s3 bucket to host an `index` and `error` html page
# aws s3 website s3://$WEB_BUCKET_NAME --index-document index.html
    # 5. Upload you website
aws s3 cp --recursive ./bin s3://$WEB_BUCKET_NAME/
    # The trailing / at the end of the URL is important. 
aws s3 cp --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3:/$WEB_BUCKET_NAME