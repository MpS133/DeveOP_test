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



FROM openjdk:19
COPY ./target/app-jar-with-dependencies.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "app-jar-with-dependencies.jar"]

