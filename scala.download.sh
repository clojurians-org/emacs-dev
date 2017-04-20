EMACS_VERSION=25.1
SCALA_VERSION=2.12.2

mkdir -p .clojurians-org/tarball
if [ ! -e .clojurians-org/tarball/jdk-8u92-linux-x64.tar.gz ]; then
    wget -c -O .clojurians-org/tarball/jdk-8u92-linux-x64.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz
fi
if [ ! -e .clojurians-org/tarball/emacs-${EMACS_VERSION}.tar.gz  ]; then 
    wget -c -O .clojurians-org/tarball/emacs-${EMACS_VERSION}.tar.gz http://ftp.gnu.org/gnu/emacs/emacs-${EMACS_VERSION}.tar.gz 
fi
if [ ! -e .clojurians-org/tarball/scala-${SCALA_VERSION}.tgz ]; then 
    wget -c -O .clojurians-org/tarball/scala-${SCALA_VERSION}.tgz https://downloads.lightbend.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz
fi

