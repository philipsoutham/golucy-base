FROM google/golang
MAINTAINER Philip Southam <philip@eml.cc>
RUN git clone https://git-wip-us.apache.org/repos/asf/lucy.git /tmp/lucy\
  && cd /tmp/lucy\
  && git checkout e19687f9a6b0158308ac7bcafc663296635b107a\
  && cd /tmp/lucy/c\
  && ./configure\
  && make\
  && make test\
  && ./install.sh --prefix /usr\
  && cd /tmp/lucy/clownfish/runtime/c\
  && ./configure\
  && make\
  && make test\
  && ./install.sh --prefix /usr\
  && cd /\
  && rm -rf /tmp/lucy
