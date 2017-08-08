FROM centos:centos7
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN yum install -y epel-release
RUN yum-config-manager --save --setopt=epel.skip_if_unavailable=true
RUN yum update -y
RUN yum install -y git \
                   libselinux-python \
                   python-devel \
                   libffi-devel \
                   redhat-rpm-config \
                   openssl-devel \ 
                   gcc paramiko PyYAML Jinja2 httplib2 \
                   ansible \
                   bash-completion \
                   iptables
RUN yum groupinstall -y "Development Tools"
RUN git clone https://github.com/samvarankashyap/paas-sig-ci
WORKDIR "/paas-sig-ci"
RUN echo "$PWD"
