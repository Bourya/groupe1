RUN wget https://downloads.apache.org/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.tar.gz
#decrit les etapes de creation d'une image
FROM openjdk:11-jdk
LABEL maintainer="com.ca.formation"
VOLUME /main-app
ADD target/formation-demo1-0.0.1-SNAPSHOT.jar  app.jar
EXPOSE 8030
ENTRYPOINT ["java","-jar","/app.jar"]