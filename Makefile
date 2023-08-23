deploy-microservice1: deploy-microservice1-mysql deploy-microservice1-phpmyadmin deploy-microservice1-src

deploy-microservice2: deploy-microservice2-mysql deploy-microservice2-phpmyadmin deploy-microservice2-src

deploy-microservice1-mysql:
	cd kubernetes/microservice1/mysql && ./deploy.sh

deploy-microservice1-phpmyadmin:
	cd kubernetes/microservice1/phpmyadmin && ./deploy.sh

deploy-microservice1-src:
	cd kubernetes/microservice1/src && ./deploy.sh

deploy-microservice2-mysql:
	cd kubernetes/microservice2/mysql && ./deploy.sh

deploy-microservice2-phpmyadmin:
	cd kubernetes/microservice2/phpmyadmin && ./deploy.sh

deploy-microservice2-src:
	cd kubernetes/microservice2/src && ./deploy.sh

.PHONY: deploy-microservice1 deploy-microservice1-mysql deploy-microservice1-phpmyadmin deploy-microservice1-src
.PHONY: deploy-microservice2 deploy-microservice2-mysql deploy-microservice2-phpmyadmin deploy-microservice2-src
