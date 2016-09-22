FROM vcatechnology/ubuntu-ci:16.10
MAINTAINER VCA Technology <developers@vcatechnology.com>

RUN echo 'APT::Update::Post-Invoke-Success {"touch /var/lib/apt/periodic/update-success-stamp 2>/dev/null || true";};' > /etc/apt/apt.conf.d/15update-stamp

# Install useful packages
RUN apt-get install -y \
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
  libopencv-dev

