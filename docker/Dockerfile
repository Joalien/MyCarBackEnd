# Pi:
FROM armv7/armhf-fedora
# x86:
#FROM mageia:latest
MAINTAINER josquin64@laposte.net <Josquin CORNEC>
#Initialisation du back end
RUN dnf install -y maven
#RUN urpmi -auto --force maven
WORKDIR /usr/local/tomcat/MyCarBackEnd
#RUN mvn install
EXPOSE 8001

#Lancement du container
CMD mvn install && \
    java -jar target/swagger-spring-1.0.0.jar 
