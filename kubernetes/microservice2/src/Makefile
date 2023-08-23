deploy:
	eval $(minikube -p minikube docker-env)
	docker build -t microservice2-image:latest ../../../app/microservice2/
	kubectl apply -f deployment.yaml
	kubectl apply -f service.yaml

apply:
	kubectl apply -f deployment.yaml
	kubectl apply -f service.yaml

delete:
	kubectl delete -f deployment.yaml
	kubectl delete -f service.yaml

build:
	docker build -t microservice2-image:latest ../../../app/microservice2/
rm-image:
	docker image rm microservice2-image:latest 
env:
	eval $(minikube -p minikube docker-env)

destroy:
	kubectl delete -f deployment.yaml
	kubectl delete -f service.yaml
	docker  rmi microservice2-image:latest -f
