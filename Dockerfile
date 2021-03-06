FROM jenkins/jnlp-slave:3.7-1
ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
ENV PATH /opt/google-cloud-sdk/bin:$PATH
USER root
RUN apt-get update -y && apt-get install -y jq libseccomp2
RUN curl https://sdk.cloud.google.com | bash && mv google-cloud-sdk /opt
RUN gcloud components install kubectl
