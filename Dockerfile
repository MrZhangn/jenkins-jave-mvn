From centos7-jdk8-py3:v1
WORKDIR /opt
COPY target/jenkins-jave-mvn-1.0-SNAPSHOT-jar-with-dependencies.jar /opt
ENTRYPOINT ["java","-jar","jenkins-jave-mvn-1.0-SNAPSHOT-jar-with-dependencies.jar"]
