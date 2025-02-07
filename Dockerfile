FROM maven:3.8.2-openjdk-8 as build_stage
WORKDIR /maven_build
COPY . .
RUN mvn clean package

FROM tomcat:9.0
COPY --from=build_stage /maven_build/target/hello-world-war-${BUILD_NUMBER}.war /usr/local/tomcat/webapps/
