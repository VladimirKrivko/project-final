FROM openjdk:17
VOLUME /javarush-jira
COPY target/jira*.jar app.jar
COPY resources resources

ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "/app.jar"]
