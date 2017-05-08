docker run -it --security-opt seccomp=unconfined --name=emacs --net=host -v $HOME/work/git/emacs-dev:/root/work/git/emacs-dev ubuntu:14.04 bash
export https_proxy="127.0.0.1:50793" && export http_proxy="127.0.0.1:50793"

mkdir -p src/main/{java,scala,resources}

C-c C-v z (lanuch repl)
C-c C-b c (compile project)
C-c C-v b (run buffer)
C-c C-v l (run region)
