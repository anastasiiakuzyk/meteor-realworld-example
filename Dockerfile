FROM node:14.3
ENV METEOR_ALLOW_SUPERUSER=1
RUN curl https://install.meteor.com/ -k | sh

COPY . /home/meteor/src
WORKDIR /home/meteor/src

RUN meteor npm install
CMD ["npm", "run", "start"]
EXPOSE 3000