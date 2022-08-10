FROM node:8

# Set the working directory
WORKDIR /data

RUN apt-get update

# Setup dependencies (JAVA and Firebase for KaideeChat)
RUN apt-get install -y \
    make \
    gcc \
    g++ \
    python \
    build-essential \
    default-jdk \
    default-jre  

RUN npm i firebase-tools -g