FROM java:8-jdk
RUN buildDeps="automake bison curl flex g++ libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-system-dev libboost-test-dev libevent-dev libssl-dev libtool make pkg-config" && apt-get update || true && apt-get install -y --no-install-recommends $buildDeps && git clone https://github.com/slashonet/thrift.git && cd thrift && ./bootstrap.sh && ./configure --disable-libs && make && make install
