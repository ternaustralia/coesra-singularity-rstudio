FROM --platform=linux/amd64  rstudio/r-base:4.4.0-focal

COPY install_dependencies.r /tmp/

ENV LANG=C.UTF-8

RUN apt update -y && apt upgrade -y

RUN  export DEBIAN_FRONTEND=noninteractive && \
    ln -fs /usr/share/zoneinfo/Australia/Brisbane /etc/localtime && \
    apt-get install -y tzdata && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    apt-get install -y apt-transport-https software-properties-common wget

# Install Grass GIS
ENV TZ=Australia
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
RUN add-apt-repository -y ppa:ubuntugis/ubuntugis-unstable && apt-get update -y
RUN apt-get install -y grass

# Install Gdal
RUN add-apt-repository -y ppa:ubuntugis/ppa && apt-get update -y
RUN apt-get install -y gdal-bin libgdal-dev

# Install some libraries
RUN apt install -y libnss3 libasound2 qt5-default libcurl4-openssl-dev libxml2-dev libmagick++-dev git libgeos-dev libprotobuf-dev libprotoc-dev protobuf-compiler libudunits2-dev libjq-dev libqpdf-dev libpoppler-cpp-dev libssl-dev libssh2-1-dev openjdk-11-jdk libv8-dev libsodium-dev > /dev/null 2>&1
RUN apt install -y cmake g++ make ssh-askpass ssh-askpass-gnome
RUN apt install -y libgmp3-dev libfribidi-dev libharfbuzz-dev fftw3-dev libglpk-dev jags

# Install RStudio
RUN wget https://download1.rstudio.org/electron/focal/amd64/rstudio-2024.04.0-735-amd64.deb
RUN apt install -y ./rstudio-2024.04.0-735-amd64.deb

ENV CPLUS_INCLUDE_PATH=/usr/include/gdal
ENV C_INCLUDE_PATH=/usr/include/gdal

RUN R -e "install.packages('rgrass', depedencies=TRUE, repos='https://cran.r-project.org')"
#RUN R -e "install.packages('terra', depedencies=TRUE, repos='https://cran.r-project.org')"

# Install R packages for RStudio
RUN chmod +x /tmp/install_dependencies.r

RUN Rscript /tmp/install_dependencies.r > depedencies.log

ENTRYPOINT exec /usr/bin/rstudio "$@"
