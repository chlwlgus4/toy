FROM adoptopenjdk/openjdk11
CMD ["./gradlew", "clean", "package"]
ARG JAR_FILE=build/libs/*.jar
RUN echo ${JAR_FILE}
COPY ${JAR_FILE} app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/app.jar"]