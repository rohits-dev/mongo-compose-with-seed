# mongo-compose-with-seed
Sample of docker compose to spin up mongodb with seed data

# setup
Create a .env file with below variables to set environment variables.

```
MONGO_USERNAME=admin
MONGO_PASSWORD=admin
MONGO_HOSTNAME=localhost
MONGO_PORT=27017
MONGO_DB=test
```

# run
To spin up the docker containers simply use 
`docker-compose up -d`


Load data script has a purge at the beginning. To apply the changes from test-data folder the container image must be rebuilt. 

To rebuild the test data container build the image using 
`docker-compose build`

