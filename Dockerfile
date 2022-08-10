FROM node:8

# Set the working directory
WORKDIR /data

RUN apt-get update
RUN apt-get install -y make gcc g++ python build-essential

# Setup firebase-cli for support test
RUN npm i firebase-tools