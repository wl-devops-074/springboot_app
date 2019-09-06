# springboot_app
Section1:Checkout SB app and compile it to jar file

1-modify pom.xml: <packaging>jar</packaging> in order to get a jar file 

2-type this command:mvn clean install 
clean:to make sure that the target deleted (target the location of jar file)
install:to download dependencies compile run the unit tests and then create a jar file and make it available /target/spring-boot-rest-example-0.5.0.jar

[INFO] Building jar: /home/docker/Downloads/springboot_app/target/spring-boot-rest-example-0.5.0.jar

3-Run the package jar :
java -jar target/spring-boot-rest-example-0.5.0.jar

edServletContainer:Tomcat started on port(s): 8090 (http)
2019-03-19 05:05:42.098  INFO 8033 --- [           main] com.khoubyari.example.Application:Started Application in 46.759 seconds (JVM running for 48.949)
the application run on port 8090
