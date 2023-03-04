
# 🐱‍💻 Hosting a Full-Stack Application

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Salsabeel95/AWS-CircleCI-node-ionic/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Salsabeel95/AWS-CircleCI-node-ionic/tree/master)

![AMS](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)

### **udagram is the final project under Udacity's Full Stack JavaScript Developer Nanodegree Program. It's a full stack application built for a retailer and deploy it to a cloud service (AWS) using CircleCI for CI/CD pipeline**



- Frontend link (UI) : http://udagram-sals.s3-website-us-east-1.amazonaws.com/

![app 1](./documentation/images/app%201.PNG)
![app 2](./documentation/images/app%202.PNG)

## Amazon Web Services:

-  AWS RDS : relational database service instance running PostgreSQL.
-  AWS Elastic Beanstalk (EB) : service hosting the API backend.
-  AWS Simple Storage Service (S3) : storage hosting the UI frontend.

## CircleCI:

 The deploy process is made with the CircleCI continuous integration pipeline.

* Pipeline:

1. Install, test and build both backend and frontend.
2. Deploy both backend and frontend.

## Documentation : 

- infrastructure description
- app dependencies
- the pipeline process

**All info about these are found in the [documentation](https://github.com/Salsabeel95/AWS-CircleCI-node-ionic/tree/master/documentation) folder.**


## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [Node](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## License

[License](LICENSE.txt)
