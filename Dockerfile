# stage 1 => build the applicatio
FROM eclipse-temurin:17-jdk-alpine AS build

# workidir of application
WORKDIR /practice

# src location => .  , destionation => .
COPY . . 

# compile java code
RUN javac App.java

# stage 2 => Run the application

FROM eclipse-temurin:17-jre-alpine

WORKDIR /practice

COPY --from=build /practice/App.class .

CMD ["java" , "App"]


