FROM ubuntu
COPY ./ /home/mosquitto
WORKDIR /home/mosquitto
EXPOSE 8883
RUN apt update
RUN apt install mosquitto mosquitto-clients -y
# CMD ["sudo", "mosquitto", "-c", "./mosquitto.conf", "-d"]
# CMD "mosquitto -c /home/mosquitto/mosquitto.conf -v"