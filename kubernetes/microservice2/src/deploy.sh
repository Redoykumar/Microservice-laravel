# kubernetes/microservice1/deploy.sh

# Apply microservice1 deployment and service configurations
eval $(minikube -p minikube docker-env)
docker build -t microservice1-image:latest ../../../app/microservice1/
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
