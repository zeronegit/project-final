build-lint-pom:
		sudo chmod +x mvnw
		./mvnw clean install

lint-docker: 
		hadolint Dockerfile

run-test:
		sudo chmod +x mvnw
		./mvnw test

