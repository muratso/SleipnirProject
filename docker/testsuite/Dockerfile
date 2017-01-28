FROM debian
MAINTAINER eric.ferreira@xys.com.br

RUN apt-get update && \
    apt-get install -y vim sudo build-essential libssl-dev libreadline6-dev curl git libffi-dev git-core libpq-dev redis-server --fix-missing

ADD dockerutil/install-rbenv.sh /usr/sbin/
ADD dockerutil/init.sh /usr/sbin/
ADD dockerutil/start.sh /

RUN chmod 755 /usr/sbin/install-rbenv.sh && \
    chmod 755 /usr/sbin/init.sh && \
    chmod 755 /start.sh

RUN echo "America/Sao_Paulo" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN useradd -m -d /home/ruby -p ruby ruby && adduser ruby sudo && chsh -s /bin/bash ruby

RUN init.sh
RUN install-rbenv.sh

USER ruby
ENV HOME /home/ruby
ENV PATH /home/ruby/.rbenv/shims:/home/ruby/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN gem install cucumber && gem install capybara

CMD ["/bin/bash", "/start.sh"]
EXPOSE 6379
