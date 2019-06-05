FROM jenkins/jenkins 
USER root
RUN apt update
RUN apt install -y curl
RUN curl https://get.docker.com | bash 
RUN usermod -aG docker jenkins
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
ENV GCLOUD_REMOTE_DOWNLOAD="https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-213.0.0-linux-x86_64.tar.gz"
ENV GCLOUD_LOCAL_DOWNLOAD="/tmp/google-cloud-sdk.tar.gz"
RUN wget "${GCLOUD_REMOTE_DOWNLOAD}" -O "${GCLOUD_LOCAL_DOWNLOAD}"
RUN tar xzvf ${GCLOUD_LOCAL_DOWNLOAD} -C /opt
RUN ln -s /opt/google-cloud-sdk/bin/gcloud /usr/bin/gcloud
RUN gcloud components install -q kubectl
RUN ln -s /opt/google-cloud-sdk/bin/kubectl /usr/bin/kubectl
USER jenkins
