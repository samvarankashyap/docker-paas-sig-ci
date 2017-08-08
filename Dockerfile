FROM centos:centos7
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN yum install -y epel-release && yum update -y
RUN yum install -y git \
                   python-pip \
                   libselinux-python \
                   python-devel \
                   libffi-devel \
                   redhat-rpm-config \
                   openssl-devel \ 
                   gcc paramiko PyYAML Jinja2 httplib2 \
                   ansible
                   
RUN yum groupinstall -y "Development Tools"
RUN git clone https://github.com/samvarankashyap/paas-sig-ci
WORKDIR "/paas-sig-ci"
RUN echo "$PWD"
