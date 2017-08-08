FROM centos:centos7
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf install -y git \
                   python-pip \
                   libselinux-python \
                   python-devel \
                   libffi-devel \
                   redhat-rpm-config \
                   openssl-devel \                   
RUN dnf groupinstall -y "Development Tools"
RUN pip install ansible==2.2.2
RUN git clone https://github.com/samvarankashyap/paas-sig-ci
WORKDIR "/paas-sig-ci"
RUN echo "$PWD"
