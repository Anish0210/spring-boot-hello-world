FROM java:8
WORKDIR /usr/src/app
COPY . .
EXPOSE 3000
CMD java -jar /usr/src/app/target/spring-boot-hello-world-1.0-SNAPSHOT.jar
