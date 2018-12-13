FROM java:8
WORKDIR /usr/src/app
COPY . .
EXPOSE 8056
CMD java -jar spring-boot-hello-world-1.0-SNAPSHOT.jar
