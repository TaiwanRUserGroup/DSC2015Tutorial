FROM rocker/rstudio

ADD init.R /tmp/init.R

RUN apt-get update && apt-get install -y libcurl4-openssl-dev libxml2-dev espeak
RUN cd /tmp && Rscript init.R
RUN cd /tmp && rm init.R
