FROM vcatechnology/ubuntu-ci
MAINTAINER VCA Technology <developers@vcatechnology.com>

# Build-time metadata as defined at http://label-schema.org
ARG PROJECT_NAME
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="$PROJECT_NAME" \
      org.label-schema.description="An up-to-date Ubuntu image with VCA tool chain packages" \
      org.label-schema.url="https://www.ubuntu.com/" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/vcatechnology/docker-ubuntu-toolchain" \
      org.label-schema.vendor="VCA Technology" \
      org.label-schema.version=$VERSION \
      org.label-schema.license=MIT \
      org.label-schema.schema-version="1.0"

# Install useful packages
RUN sudo vca-install-package \
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
  unrar-free \
  automake \
  libgcrypt11-dev \
  libasound2-dev \
  alsa-utils \
  libuv1-dev \
  llvm \
  llvm-dev \
  clang-format \
  clang-tidy \
  libnl-3-dev \
  libnl-cli-3-dev \
  libndp-dev \
  nodejs-legacy \
  npm \
  libnspr4-dev \
  nasm \
  libbz2-dev

RUN sudo LC_ALL=C pip install cpplint
