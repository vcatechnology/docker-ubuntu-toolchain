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
  alsa-utils \
  automake \
  bc \
  bison \
  check \
  clang-format \
  clang-tidy \
  cmake \
  cppcheck \
  debhelper \
  dialog \
  doxygen \
  eject \
  flex \
  gawk \
  g++ \
  gcc \
  gdisk \
  gnu-efi \
  graphviz \
  gstreamer1.0-libav \
  gstreamer1.0-plugins-ugly \
  gstreamer1.0-tools \
  intltool \
  libaa-bin \
  libaa1-dev \
  libasound2-dev \
  libasprintf-dev \
  libattr1-dev \
  libavcodec-dev \
  libavdevice-dev \
  libboost-all-dev \
  libbz2-dev \
  libcap-dev \
  libcap-ng-dev \
  libcppunit-dev \
  libcurl4-gnutls-dev \
  libdbus-1-dev \
  libeigen3-dev \
  libffi-dev \
  libgcrypt11-dev \
  libgettextpo-dev \
  libgmp-dev \
  libgnutls28-dev \
  libgpg-error-dev \
  libgstreamer-plugins-bad1.0-dev \
  libgstreamer-plugins-base1.0-dev \
  libgstreamer-plugins-good1.0-dev \
  libgstreamer1.0-dev \
  libgudev-1.0-dev \
  libidn11-dev \
  libjansson-dev \
  libjpeg-turbo8-dev \
  libmount-dev \
  libncurses5-dev \
  libncursesw5-dev \
  libndp-dev \
  libnl-3-dev \
  libnl-cli-3-dev \
  libnspr4-dev \
  libntlm0-dev \
  libopencv-dev \
  liborc-0.4-dev \
  libpam0g-dev \
  libpcre3-dev \
  libpng-dev \
  libpopt-dev \
  libprotobuf-dev \
  libqt4-dev \
  libsigc++-2.0-dev \
  libsoup2.4-dev \
  libsqlite3-dev \
  libssl-dev \
  libsubunit-dev \
  libsystemd-dev \
  libtasn1-6-dev \
  libtinyxml-dev \
  libtool-bin \
  libudev-dev \
  libuv1-dev \
  libx264-dev \
  libxml2-dev \
  lintian \
  llvm \
  llvm-dev \
  mscgen \
  nasm \
  ncurses-term \
  nettle-dev \
  nodejs-legacy \
  npm \
  p7zip-full \
  pandoc \
  pkg-config \
  protobuf-compiler \
  python-coverage \
  python-pip \
  qemu \
  realpath \
  subunit \
  systemd \
  unrar-free \
  valgrind \
  vde2 \
  xzdec \
  yasm \
  zlib1g-dev

RUN LC_ALL=C pip install --user cpplint sseclient backports.functools_lru_cache
