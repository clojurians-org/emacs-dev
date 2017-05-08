EMACS_VERSION=25.2
SBT_VERSION=0.13.15

# apt-get install gcc make libncurses-dev

if [ ! -e .clojurians-org/tarball/emacs-${EMACS_VERSION}.tar.gz ]; then echo "  [ERROR] PLEASE RUN download script FIRST" && exit; fi
if [ ! -e .clojurians-org/opt/emacs/bin/emacs ]; then 
    CUR_DIR=$(pwd)
    mkdir -p $TARGET_DIR/opt/emacs
    cd .clojurians-org/tarball &&  tar -xvf emacs-${EMACS_VERSION}.tar.gz && cd emacs-${EMACS_VERSION} && ./configure --prefix=$TARGET_DIR/opt/emacs --without-x --without-ns && make && make install && cd $CUR_DIR
fi
