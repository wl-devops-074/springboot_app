FROM java
ADD ./target/springboot_app-0.0.2-SNAPSHOT.jar  /myproject-0.0.1-SNAPSHOT.jar
ADD ./run.sh /run.sh
RUN chmod a+x /run.sh
EXPOSE 8080:8080
CMD /run.sh
