FROM rstudio/r-base:4.0-bionic

COPY install_dependencies.r /tmp/

ENV LANG=C.UTF-8

RUN apt update -y

RUN  export DEBIAN_FRONTEND=noninteractive && \
  ln -fs /usr/share/zoneinfo/Australia/Brisbane /etc/localtime && \
  apt-get install -y tzdata && \
  dpkg-reconfigure --frontend noninteractive tzdata && \
  apt-get install -y apt-transport-https software-properties-common wget

RUN  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9  && \
  add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/' && \
  apt update -y  && \
  apt upgrade -y && \
  apt install -y libnss3 libasound2 qt5-default libcurl4-openssl-dev libxml2-dev libmagick++-dev git libgdal-dev libgeos-dev libprotobuf-dev libprotoc-dev protobuf-compiler libudunits2-dev libjq-dev libqpdf-dev libpoppler-cpp-dev libssl-dev libssh2-1-dev openjdk-11-jdk libv8-dev libsodium-dev > /dev/null 2>&1

RUN chmod +x /tmp/install_dependencies.r

RUN Rscript /tmp/install_dependencies.r > depedencies.log

RUN wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-pro-1.4.1717-3-amd64.deb

RUN apt install -y ./rstudio-pro-1.4.1717-3-amd64.deb

ENTRYPOINT exec /usr/bin/rstudio "$@"
