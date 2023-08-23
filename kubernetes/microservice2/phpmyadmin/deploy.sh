# app/microservice2/phpmyadmin/deploy.sh

# Apply phpMyAdmin deployment and service configurations
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
