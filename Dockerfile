
FROM docker/whalesay:latest
RUN sed -i "s/archive/cn\.archive/g" /etc/apt/sources.list
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay
