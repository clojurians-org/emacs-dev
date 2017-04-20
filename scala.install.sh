EMACS_VERSION=25.1
SCALA_VERSION=2.12.2
TARGET_DIR=$HOME/work/git/emacs-dev/.clojurians-org

apt-get install gcc make libncurses-dev
CUR_DIR=$(pwd)
if [ ! -e .clojurians-org/cache/emacs-${EMACS_VERSION}.tar.gz ]; then echo "  [ERROR] PLEASE RUN download script FIRST" && exit; fi

if [ ! -e $TARGET_DIR/bin/emacs ]; then 
    mkdir -p $TARGET_DIR/opt/emacs
    cd .clojurians-org/cache &&  tar -xvf emacs-${EMACS_VERSION}.tar.gz && cd emacs-${EMACS_VERSION} && ./configure --prefix=$TARGET_DIR/opt/emacs --without-x && make && make install && cd $CUR_DIR
fi
