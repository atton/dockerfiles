FROM fedora

RUN dnf install -y vim emacs clang clang-devel openssh-clients rsync gcc make cmake mercurial zsh libstdc++
RUN hg clone http://firefly.cr.ie.u-ryukyu.ac.jp/hg/CbC/CbC_llvm /root/CbC_llvm
RUN mkdir /root/CbC_build

WORKDIR /root/CbC_build
RUN /root/CbC_llvm/configure --disable-optimized --enable-debug-runtime --enable-debug-symbols --enable-assertions
RUN make -j 2
