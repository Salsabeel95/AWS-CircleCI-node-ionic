# 🐱‍💻 CircleCI Continuous Integration Pipeline

When a new commit has been pushed to the main branch of the repository,That's trigger the CircleCI to perform an automated proccess (continuous integration pipeline):

1.  Sets up the environment (install tools , preparing enviroment variables, setting up EB and AWS cli ).
2.  Checks out from the main branch of the repository.
3.  Installs the dependencies for the backend 
4.  Builds backend 
5.  Runs backend unit tests
6.  Deploys the backend to the EB environment
7.  Repeats the CI for the frontend (installs dependencies, build then deploy it to the S3 bucket)

![circleci aws diagram](./images/circleci%20aws%20diagram.png)


- screenshot of the CricleCi build last state
![circleci success](../screenshots/circleci%20success.PNG)


- All the secrets found in the application are configured inside CircleCi and passed to the application in EB.
![circleci secrets](../screenshots/circleci%20configration%20(secrets).PNG)