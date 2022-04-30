FROM adoptopenjdk/openjdk11:alpine-jre
CMD mnv clean package
COPY target/pos-payment-api-0.0.1-SNAPSHOT.jar pos-payment-api.jar
ENTRYPOINT ["java", "-jar", "pos-payment-api.jar"]
EXPOSE 8086