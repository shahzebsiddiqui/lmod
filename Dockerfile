FROM centos:centos7

env LMOD_VER 8.3.1
MAINTAINER Shahzeb Siddiqui <shahzebmsiddiqui@gmail.com>

RUN yum -y install git tar which bzip2 xz \
            epel-release make automake gcc gcc-c++ patch \
            python-keyring zlib-devel openssl-devel unzip 

RUN yum -y install lua lua-bitop lua-devel lua-filesystem lua-json lua-lpeg lua-posix lua-term tcl tcl-devel 

RUN mkdir -p /build
WORKDIR /build

RUN curl -LO http://github.com/TACC/Lmod/archive/${LMOD_VER}.tar.gz
RUN mv /build/${LMOD_VER}.tar.gz /build/Lmod-${LMOD_VER}.tar.gz
RUN tar xvf Lmod-${LMOD_VER}.tar.gz
WORKDIR /build/Lmod-${LMOD_VER}
RUN ./configure --prefix=/opt/apps && make install
RUN ln -s /opt/apps/lmod/lmod/init/profile /etc/profile.d/z00_lmod.sh
RUN ln -s /opt/apps/lmod/lmod/init/cshrc /etc/profile.d/z00_lmod.csh
