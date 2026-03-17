FROM docker.io/eclipse-temurin:25 AS build
WORKDIR /opt
RUN \
  apt-get update; \
  apt-get install -y wget unzip; \
	echo "Fetching KickAssembler"; \
  mkdir /opt/ka/; \
	wget -O/tmp/app.zip "https://www.theweb.dk/KickAssembler/KickAssembler.zip"; \
  unzip -d /opt/ka /tmp/app.zip KickAss.jar
ENTRYPOINT ["java", "-jar", "/opt/ka/KickAss.jar"]
