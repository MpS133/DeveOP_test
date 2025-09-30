#FROM openjdk:19
#COPY ./target/classes/com /tmp/com
#WORKDIR /tmp
#ENTRYPOINT ["java", "napier.devops.App"]



#
#FROM openjdk:19
## copy the classes root (preserve the com/... structure)
#COPY ./target/classes /app/classes
#WORKDIR /app
## tell java where the classes root is and use the correct FQCN
#ENTRYPOINT ["java", "-cp", "classes", "com.napier.devops.App"]



#FROM openjdk:19
#COPY ./target/app-jar-with-dependencies.jar /tmp
#WORKDIR /tmp
#ENTRYPOINT ["java", "-jar", "app-jar-with-dependencies.jar"]

# Use the latest MySQL image
FROM mysql/mysql-server:latest
# Set the working directory
WORKDIR /tmp
# Copy all the files to the working directory of the container
COPY test_db/*.sql /tmp/
COPY test_db/*.dump /tmp/
# Copy the main SQL file to docker-entrypoint-initdb.d.
# Scripts and SQL files in this folder are executed on container startup.
# This is specific to MySQL.
COPY test_db/employees.sql /docker-entrypoint-initdb.d
# Set the root password
ENV MYSQL_ROOT_PASSWORD example