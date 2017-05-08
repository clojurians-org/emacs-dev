EMACS_VERSION=25.2
SBT_VERSION=0.13.15

mkdir -p .clojurians-org/tarball
if [ ! -e .clojurians-org/tarball/jdk-8u92-linux-x64.tar.gz ]; then
    wget -c -O .clojurians-org/tarball/jdk-8u92-linux-x64.tar.gz.downloading --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz
    mv .clojurians-org/tarball/jdk-8u92-linux-x64.tar.gz.downloading .clojurians-org/tarball/jdk-8u92-linux-x64.tar.gz
fi
if [ ! -e .clojurians-org/tarball/emacs-${EMACS_VERSION}.tar.gz  ]; then 
    wget -c -O .clojurians-org/tarball/emacs-${EMACS_VERSION}.tar.gz.downloading http://ftp.gnu.org/gnu/emacs/emacs-${EMACS_VERSION}.tar.gz 
    mv .clojurians-org/tarball/emacs-${EMACS_VERSION}.tar.gz.downloading .clojurians-org/tarball/emacs-${EMACS_VERSION}.tar.gz
fi
if [ ! -e .clojurians-org/tarball/sbt-${SBT_VERSION}.tgz ]; then
    wget -c -O .clojurians-org/tarball/sbt-${SBT_VERSION}.tgz.downloading https://github.com/sbt/sbt/releases/download/v${SBT_VERSION}/sbt-${SBT_VERSION}.tgz
    mv .clojurians-org/tarball/sbt-${SBT_VERSION}.tgz.downloading .clojurians-org/tarball/sbt-${SBT_VERSION}.tgz
fi

