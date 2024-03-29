# Use Red Hat Universal Base Image (UBI) as the base image
FROM registry.access.redhat.com/ubi8/ubi-minimal:latest

# Install Java Runtime Environment (OpenJDK 11)
RUN microdnf install java-11-openjdk-headless

# Set the working directory in the container
WORKDIR /app

# Copy the application's artifacts to the container
COPY target/quarkus-app /app

# Command to execute the application
CMD ["java", "-jar", "quarkus-run.jar"]

