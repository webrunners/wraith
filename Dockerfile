FROM ruby:2.4-stretch

RUN apt-get -yq update &&\
 curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash - &&\
 apt-get install -yq --no-install-recommends\
    libicu-dev\
    imagemagick\
    nodejs\
    ttf-freefont\
    ttf-mscorefonts-installer\
    ttf-bitstream-vera\
    ttf-dejavu\
    ttf-liberation &&\
 gem install wraith --no-rdoc --no-ri &&\
 npm install -g phantomjs-prebuilt

# RUN echo "export phantomjs=/usr/bin/phantomjs" > .bashrc

ENTRYPOINT [ "wraith" ]

