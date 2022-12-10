FROM ubuntu:latest
WORKDIR /app
EXPOSE 25565
ENV EULA false
ENV DDS_URL  https://mediafilez.forgecdn.net/files/3074/836/DDSS_Serverfiles_8.0_R1.zip
ENV Xms 1024
ENV Xmx 6048
ENV OP ""


RUN apt update -y
RUN apt upgrade -y
RUN apt install  -y \
    openjdk-8-jdk \
    wget \
    zip \
    unzip \
    nano

RUN wget $DDS_URL -O DDS.zip
RUN unzip DDS.zip -d ./
RUN rm DDS.zip

COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

CMD /startup.sh
