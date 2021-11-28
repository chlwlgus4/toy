FROM adoptopenjdk/openjdk11
CMD ["./gradlew", "clean", "package"]
RUN echo build/libs/*.jar
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} /app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app.jar"]