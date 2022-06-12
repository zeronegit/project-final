build-lint-pom:
		sudo ./mvnw clean install

lint-docker: 
		hadolint Dockerfile

run-test:
		sudo ./mvnw test

