build-lint-pom:
		./mvnw clean install

lint-docker: 
		hadolint Dockerfile
