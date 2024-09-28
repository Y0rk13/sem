# FROM ubuntu:latest #
# LABEL authors="jared" #

# ENTRYPOINT ["top", "-b"] #

FROM openjdk:latest
COPY ./target/classes/com /tmp/com
WORKDIR /tmp
ENTRYPOINT ["java", "com.napier.sem.App"]