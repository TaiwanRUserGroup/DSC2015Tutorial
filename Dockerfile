FROM rocker/rstudio

MAINTAINER Chih-Cheng Liang and Wush Wu

COPY init.R /tmp/init.R
RUN apt-get update && apt-get install -y libcurl4-openssl-dev libxml2-dev
RUN cd /tmp && Rscript init.R && rm init.R

