FROM java:8
WORKDIR /
ADD /root/.m2/repository/com/patrickgrimard/spring-boot-hello-world/1.0-SNAPSHOT/spring-boot-hello-world-1.0-SNAPSHOT.jar
EXPOSE 8080
CMD java - jar spring-boot-hello-world-1.0-SNAPSHOT.jar
