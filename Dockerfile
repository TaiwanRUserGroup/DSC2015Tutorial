FROM rocker/rstudio

MAINTAINER Chih-Cheng Liang and Wush Wu

COPY init.R /tmp/init.R
RUN apt-get update && apt-get install -y libcurl4-openssl-dev libxml2-dev
RUN cd /tmp && Rscript init.R && rm init.R
COPY DSC2015R /tmp/DSC2015R
RUN cd /tmp && R CMD INSTALL DSC2015R && Rscript -e "library(DSC2015R);install_course()"

