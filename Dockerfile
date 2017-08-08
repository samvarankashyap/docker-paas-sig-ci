FROM centos:centos7
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN yum install -y git \
                   epel-release \
                   python-pip \
                   libselinux-python \
                   python-devel \
                   libffi-devel \
                   redhat-rpm-config \
                   openssl-devel \                   
RUN yum groupinstall -y "Development Tools"
RUN pip install ansible==2.2.2
RUN git clone https://github.com/samvarankashyap/paas-sig-ci
WORKDIR "/paas-sig-ci"
RUN echo "$PWD"
