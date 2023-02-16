aws s3 cp --recursive ./www s3://udgram-sals
# The trailing / at the end of the URL is important. 
aws s3 cp --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://udgram-sals