FROM maven:3.3.9-jdk-8
ADD . /opt/dropwizard
WORKDIR /opt/dropwizard
RUN ["mvn", "package"]
EXPOSE 8080
RUN ["java", "-jar", "-Done-jar.silent=true", "target/dropwizard-example-1.0.1.jar", "db", "migrate", "example.yml"]
CMD ["java", "-jar", "-Done-jar.silent=true", "target/dropwizard-example-1.0.1.jar", "server", "example.yml"]
