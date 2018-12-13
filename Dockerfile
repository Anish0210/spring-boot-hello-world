FROM java:8
WORKDIR /usr/src/app
COPY . .
EXPOSE 8056
CMD java -jar /var/lib/jenkins/workspace/maven-build-pipeline_master/target/
