FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.5

RUN gem install airbrake_tools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["airbrake-tools"]
CMD ["--help"]
