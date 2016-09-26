FROM openjdk:8
ADD example.yml /opt/dropwizard/
ADD target/dropwizard-example-1.0.1.jar /opt/dropwizard/
add example.keystore /opt/dropwizard
WORKDIR /opt/dropwizard
EXPOSE 8080
RUN ["java", "-jar", "-Done-jar.silent=true", "dropwizard-example-1.0.1.jar", "db", "migrate", "example.yml"]
CMD ["java", "-jar", "-Done-jar.silent=true", "dropwizard-example-1.0.1.jar", "server", "example.yml"]