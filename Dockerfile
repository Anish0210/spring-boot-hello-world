FROM java:8
WORKDIR /
ADD /var/lib/jenkins/workspace/maven-build-pipeline_master/target/spring-boot-hello-world-1.0-SNAPSHOT.jar /springboot
EXPOSE 8080
CMD java -jar spring-boot-hello-world-1.0-SNAPSHOT.jar
