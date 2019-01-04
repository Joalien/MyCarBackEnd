FROM mageia:latest
MAINTAINER josquin64@laposte.net <Josquin CORNEC>
#Initialisation du back end
RUN urpmi --force --auto maven git
RUN git clone https://github.com/Joalien/MyCarBackEnd.git
WORKDIR MyCarBackEnd
RUN mvn install 

#Lancement du container
CMD git pull && \
    mvn install && \
    java -jar target/swagger-spring-1.0.0.jar 

EXPOSE 8001
