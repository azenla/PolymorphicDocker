FROM google/dart

WORKDIR /app

ADD . /app
RUN apt-get update
RUN apt-get install -y git-core
RUN git clone git://github.com/PolymorphicBot/PolymorphicBot.git PolymorphicBot && cd PolymorphicBot && pub get && cd ..

CMD []
ENTRYPOINT ["/usr/bin/dart", "/app/PolymorphicBot/bin/bot.dart", "."]
