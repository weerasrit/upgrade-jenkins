FROM local/jenkins:alpine

# Init plugin
COPY ./init-plugins/plugins.txt  /usr/share/jenkins/ref/plugins.txt

# Plugin Url (default: https://updates.jenkins.io/)
ENV JENKINS_UC https://lib.matador.ais.co.th/repository/jenkins-plugins

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# COPY ./casc_configs /var/casc_configs

# ENV CASC_JENKINS_CONFIG=/var/casc_configs \
#     JC_UNKNOWN=Hl(Eq)\$@om+21b#N
