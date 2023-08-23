# app/microservice1/mysql/deploy.sh

# Apply MySQL deployment and service configurations
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
