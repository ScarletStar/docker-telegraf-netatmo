FROM telegraf:latest
COPY netatmo /usr/local/bin/netatmo
COPY netatmo.yml /usr/local/bin/netatmo.yml
RUN apt-get update
RUN apt-get install -y ruby
RUN apt-get clean
USER telegraf
CMD telegraf