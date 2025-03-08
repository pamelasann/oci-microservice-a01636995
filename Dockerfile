FROM openjdk:17-jdk-slim
WORKDIR /oci-microservice-a01636995
COPY /target/*.jar oci-microservice-a01636995.jar
COPY /src/main/resources/Wallet_javadev103 /oci-microservice-a01636995/Wallet_javadev103
ENV TNS_ADMIN=/oci-microservice-a01636995/Wallet_javadev103
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "oci-microservice-a01636995.jar" ]