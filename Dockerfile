FROM docker.io/alpine:3.23 AS build
WORKDIR /opt
RUN \
  apk add wget unzip; \
	echo "Fetching KickAssembler"; \
	wget -O/tmp/app.zip "https://www.theweb.dk/KickAssembler/KickAssembler.zip"; \
  unzip /tmp/app.zip KickAss.jar

FROM docker.io/alpine:3.23
RUN mkdir /opt/ka; \
    apk add openjdk11
COPY --from=build /opt/KickAss.jar /opt/ka/KickAss.jar
ENTRYPOINT ["java", "-jar", "/opt/ka/KickAss.jar"]
