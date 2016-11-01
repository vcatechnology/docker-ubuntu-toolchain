FROM vcatechnology/ubuntu-ci:16.10
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Install useful packages
RUN sudo apt-get install -y \
  python-pip \
  gcc \
  g++ \
  libtool-bin \
  realpath \
  pkg-config \
  debhelper \
  lintian \
  p7zip-full \
  doxygen \
  graphviz \
  mscgen \
  subunit \
  libsubunit-dev \
  check \
  valgrind \
  cppcheck \
  libcppunit-dev \
  cmake \
  libpcre3-dev \
  zlib1g-dev \
  libprotobuf-dev \
  protobuf-compiler \
  pandoc \
  libqt4-dev \
  libpng-dev \
  libeigen3-dev \
  libavcodec-dev \
  libavdevice-dev \
  yasm \
  libjpeg-turbo8-dev \
  libopencv-dev \
  libboost-all-dev \
  libjansson-dev \
  libssl-dev \
  flex \
  bison \
  libntlm0-dev \
  libtinyxml-dev \
  libffi-dev \
  xzdec \
  libxml2-dev \
  libasprintf-dev \
  libgettextpo-dev \
  libsqlite3-dev \
  intltool \
  libsoup2.4-dev \
  libgmp-dev \
  nettle-dev \
  libx264-dev \
  liborc-0.4-dev \
  libgstreamer1.0-dev \
  gstreamer1.0-tools \
  libgstreamer-plugins-base1.0-dev \
  libgstreamer-plugins-good1.0-dev \
  libgstreamer-plugins-bad1.0-dev \
  gstreamer1.0-plugins-ugly \
  gstreamer1.0-libav \
  libsigc++-2.0-dev \
  libidn11-dev \
  libtasn1-6-dev \
  libgnutls28-dev \
  libcurl4-gnutls-dev \
  libattr1-dev \
  libpam0g-dev \
  libcap-dev \
  libmount-dev \
  eject \
  systemd \
  libsystemd-dev \
  libudev-dev \
  libgudev-1.0-dev \
  libdbus-1-dev \
  libncurses5-dev \
  libncursesw5-dev \
  ncurses-term \
  dialog \
  libpopt-dev \
  libgpg-error-dev \
  libgcrypt11-dev \
  libasound2-dev \
  alsa-utils \
  libuv1-dev \
  libnl-3-dev \
  libnl-cli-3-dev \
  libndp-dev \
  nodejs-legacy \
  npm \
  libnspr4-dev \
  nasm \
  libbz2-dev \
  unrar-free

RUN sudo pip install cpplint
