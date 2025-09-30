FROM openjdk:19
COPY ./target/DeveOP-0.1.0.2-jar-with-dependencies.jar /tmp
WORKDIR /tmp
ENTRYPOINT ["java", "-jar", "DeveOP-0.1.0.2-jar-with-dependencies.jar"]