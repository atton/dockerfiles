FROM fedora

RUN dnf install -y vim emacs clang clang-devel openssh-clients rsync gcc make cmake mercurial zsh libstdc++
RUN hg clone http://firefly.cr.ie.u-ryukyu.ac.jp/hg/CbC/LLVM_original /root/llvm_original
RUN mkdir /root/llvm_build

WORKDIR /root/llvm_build
RUN /root/llvm_original/configure --disable-optimized --enable-debug-runtime --enable-debug-symbols --enable-assertions
RUN make -j 12

