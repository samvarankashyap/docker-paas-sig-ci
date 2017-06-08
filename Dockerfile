FROM fedora 
MAINTAINER Samvaran Kashyap (srallaba@redhat.com)
RUN dnf update -y
RUN dnf install -y git python-pip
RUN dnf install -y libselinux-python python2-dnf
RUN dnf groupinstall -y "Development Tools"
RUN dnf install -y python-devel
RUN dnf install -y libffi-devel
RUN dnf install -y redhat-rpm-config
RUN dnf install -y openssl-devel
RUN pip install ansible==2.2.0
RUN git clone https://github.com/samvarankashyap/paas-sig-ci
WORKDIR "/paas-sig-ci"
RUN echo "$PWD"
