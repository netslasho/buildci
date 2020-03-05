FROM java:8-jdk
RUN buildDeps="automake autoconf unzip bison curl flex g++ libboost-dev libboost-filesystem-dev libboost-program-options-dev libboost-system-dev libboost-test-dev libevent-dev libssl-dev libtool make pkg-config" && apt-get update || true && apt-get install -y --no-install-recommends $buildDeps 
