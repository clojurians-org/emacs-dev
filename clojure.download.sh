EMACS_VERSION=25.1

mkdir -p .clojurians-org/cache
if [ ! -e .clojurians-org/cache/emacs-${EMACS_VERSION}.tar.gz  ]; then wget -c -O .clojurians-org/cache/emacs-${EMACS_VERSION}.tar.gz http://ftp.gnu.org/gnu/emacs/emacs-${EMACS_VERSION}.tar.gz; fi
