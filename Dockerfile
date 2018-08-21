FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
EXPOSE 5005
ADD build/libs/star-wars-universe-all.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar
