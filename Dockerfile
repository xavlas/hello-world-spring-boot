FROM openjdk:11
copy target/myproject-0.0.1-SNAPSHOT.jar myproject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","myproject-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080