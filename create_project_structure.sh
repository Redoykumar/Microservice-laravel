#!/bin/bash

# Create project directories
mkdir -p app/ambassador
mkdir -p app/microservice1/src
mkdir -p app/microservice1/tests
mkdir -p app/microservice2/src
mkdir -p app/microservice2/tests
mkdir -p kubernetes/ambassador
mkdir -p kubernetes/microservice1/mysql
mkdir -p kubernetes/microservice1/phpmyadmin
mkdir -p kubernetes/microservice1/src
mkdir -p kubernetes/microservice2/mysql
mkdir -p kubernetes/microservice2/phpmyadmin
mkdir -p kubernetes/microservice2/src

# Create placeholder files
touch app/ambassador/config.yaml
touch app/ambassador/envoy.yaml
touch app/microservice1/Dockerfile
touch app/microservice2/Dockerfile
touch kubernetes/ambassador/deploy.sh
touch kubernetes/ambassador/deployment.yaml
touch kubernetes/ambassador/service.yaml
touch kubernetes/microservice1/mysql/deploy.sh
touch kubernetes/microservice1/mysql/deployment.yaml
touch kubernetes/microservice1/mysql/service.yaml
touch kubernetes/microservice1/phpmyadmin/deploy.sh
touch kubernetes/microservice1/phpmyadmin/deployment.yaml
touch kubernetes/microservice1/phpmyadmin/service.yaml
touch kubernetes/microservice1/src/deploy.sh
touch kubernetes/microservice1/src/deployment.yaml
touch kubernetes/microservice1/src/service.yaml
touch kubernetes/microservice2/mysql/deploy.sh
touch kubernetes/microservice2/mysql/deployment.yaml
touch kubernetes/microservice2/mysql/service.yaml
touch kubernetes/microservice2/phpmyadmin/deploy.sh
touch kubernetes/microservice2/phpmyadmin/deployment.yaml
touch kubernetes/microservice2/phpmyadmin/service.yaml
touch kubernetes/microservice2/src/deploy.sh
touch kubernetes/microservice2/src/deployment.yaml
touch kubernetes/microservice2/src/service.yaml

# Make the deploy.sh scripts executable
chmod +x kubernetes/ambassador/deploy.sh
chmod +x kubernetes/microservice1/mysql/deploy.sh
chmod +x kubernetes/microservice1/phpmyadmin/deploy.sh
chmod +x kubernetes/microservice1/src/deploy.sh
chmod +x kubernetes/microservice2/mysql/deploy.sh
chmod +x kubernetes/microservice2/phpmyadmin/deploy.sh
chmod +x kubernetes/microservice2/src/deploy.sh

echo "Project structure created successfully!"
