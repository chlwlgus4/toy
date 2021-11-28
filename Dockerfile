FROM adoptopenjdk/openjdk11
CMD ["./gradlew", "clean", "package"]
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} toy-0.0.1-SNAPSHOT.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/toy-0.0.1-SNAPSHOT.jar"]