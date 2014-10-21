FROM google/dart

WORKDIR /app

ADD . /app
RUN apt-get update
RUN apt-get install -y git-core
RUN git clone git://github.com/PolymorphicBot/PolymorphicBot.git PolymorphicBot
RUN cd PolymorphicBot
RUN pub get
RUN cd ..

CMD []
ENTRYPOINT ["/usr/bin/dart", "/app/PolymorphicBot/bin/bot.dart", "."]
