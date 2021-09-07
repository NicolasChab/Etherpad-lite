FROM node:latest

RUN apt-get install -y curl \
	git \
	&& git clone --branch master https://github.com/ether/etherpad-lite.git 

COPY entrypoint.sh /etherpad-lite/entrypoint.sh	
COPY settings.json /etherpad-lite/settings.json
ENTRYPOINT ["/etherpad-lite/entrypoint.sh"]

