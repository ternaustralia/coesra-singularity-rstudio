FROM --platform=linux/amd64  rstudio/r-base:devel-focal

COPY install_dependencies.r /tmp/

ENV LANG=C.UTF-8

RUN apt update -y

RUN  export DEBIAN_FRONTEND=noninteractive && \
  ln -fs /usr/share/zoneinfo/Australia/Brisbane /etc/localtime && \
  apt-get install -y tzdata && \
  dpkg-reconfigure --frontend noninteractive tzdata && \
  apt-get install -y apt-transport-https software-properties-common wget

RUN  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9  && \
  add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' && \
  apt update -y  && \
  apt upgrade -y && \
  apt install -y libnss3 libasound2 qt5-default libcurl4-openssl-dev libxml2-dev libmagick++-dev git libgdal-dev libgeos-dev libprotobuf-dev libprotoc-dev protobuf-compiler libudunits2-dev libjq-dev libqpdf-dev libpoppler-cpp-dev libssl-dev libssh2-1-dev openjdk-11-jdk libv8-dev libsodium-dev > /dev/null 2>&1

RUN apt install -y cmake g++ make

RUN apt install -y libgmp3-dev libfribidi-dev libharfbuzz-dev fftw3-dev jags

# Configure Java for R; required for rJava
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
RUN R CMD javareconf

# Install R packages
RUN chmod +x /tmp/install_dependencies.r

RUN Rscript /tmp/install_dependencies.r > depedencies.log

RUN wget https://download1.rstudio.org/electron/focal/amd64/rstudio-2023.06.1-524-amd64.deb

RUN apt install -y ./rstudio-2023.06.1-524-amd64.deb

ENTRYPOINT exec /usr/bin/rstudio "$@"
