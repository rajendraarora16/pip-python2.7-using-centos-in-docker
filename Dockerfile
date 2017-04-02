FROM centos:latest
MAINTAINER Rajendra arora<contact.rajendraarora@gmail.com>

RUN yum -y install httpd 
RUN yum clean all; systemctl enable httpd.service
RUN yum install -y which
RUN yum install -y bzip2
RUN yum install -y wget
RUN wget https://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh
RUN sh Miniconda-latest-Linux-x86_64.sh -b -p /usr/local/miniconda
ENV PATH="/usr/local/miniconda/bin:${PATH}"
RUN source ~/.bashrc
RUN alias python2.7="/usr/local/miniconda/bin/python"
RUN conda install pip

EXPOSE 80

CMD ["python2"]
