docker run -it --security-opt seccomp=unconfined --name=emacs --net=host -v $HOME/work/git/emacs-dev:/root/work/git/emacs-dev ubuntu:14.04 bash
