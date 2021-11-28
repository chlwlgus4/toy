FROM adoptopenjdk/openjdk11
CMD ["./gradlew", "clean", "package"]
ARG JAR_FILE=build/libs/toy-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]