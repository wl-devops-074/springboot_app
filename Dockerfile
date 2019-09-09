FROM openjdk:8
WORKDIR /usr/src
ADD springboot_app.jar /usr/src/springboot_app.jar
EXPOSE 8090
CMD ["java", "-jar", "springboot_app.jar"]
