FROM nodered/node-red-docker
USER root
# init
ENV TIME_ZONE="Asia/Taipei"
# timezone
RUN echo $TIME_ZONE > /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata
#
USER node-red
RUN npm install node-red-contrib-flightaware
RUN npm install node-red-dashboard

