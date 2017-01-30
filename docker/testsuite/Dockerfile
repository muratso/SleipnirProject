FROM debian
MAINTAINER diogo.fe.costa@gmail.com

# Atualizando ambiente
RUN apt-get update && apt-get install -y sudo build-essential chrpath libssl-dev libxft-dev libfontconfig libreadline6-dev curl git libffi-dev git-core libpq-dev redis-server --fix-missing

# Instalando o Ruby
COPY ./dockerutil/install-rbenv.sh /usr/sbin/
RUN chmod 755 /usr/sbin/install-rbenv.sh
RUN useradd -m -d /home/ruby -p ruby ruby && adduser ruby sudo && chsh -s /bin/bash ruby
RUN /usr/sbin/install-rbenv.sh
ENV HOME /home/ruby
ENV PATH /home/ruby/.rbenv/shims:/home/ruby/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN apt-get install wget -y
## Instalando o PhantomJS
RUN cd /tmp \
 && wget -O phantomjs.tar.bz2 "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2" \
 && tar xvjf phantomjs.tar.bz2 --strip 1 \
 && cp /tmp/bin/phantomjs /usr/local/bin/phantomjs \
 && ls -la /tmp \
 && rm -rf /tmp/*

# Clean Install
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD automated /automated
RUN chown ruby:ruby /automated/*
RUN chmod 755 /automated/*
USER ruby
RUN cd /automated && bundle

VOLUME ["/automated"]
WORKDIR /automated
CMD ["cucumber"]
