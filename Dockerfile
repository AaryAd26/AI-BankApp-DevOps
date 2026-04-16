# Getting an base image for the applicatoin
FROM eclipse-temurin:21-jdk-alpine  

# Setting the working directory for the application
WORKDIR /app

#copy all the code file to the container
COPY . . 

# isntalling the dependencies for the application
RUN chmod +x mvnw && ./mvnw clean package -DskipTests 

RUN ls -la 

#indicating the port to be exposed for the application
EXPOSE 8080

#CMD to run the application
CMD ["sh", "-c", "java -jar target/*.jar"]

