FROM beevelop/cordova

ENV IONIC_VERSION 6.19.1

RUN apt-get update && apt-get install -y git bzip2 openssh-client && \
    npm install -g --unsafe-perm @ionic/cli@${IONIC_VERSION} && \
    ionic --version && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
