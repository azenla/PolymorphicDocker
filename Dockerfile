FROM google/dart

WORKDIR /app

ADD . /app
RUN git clone https://github.com/PolymorphicBot/PolymorphicBot.git PolymorphicBot
RUN cd PolymorphicBot
RUN pub get
RUN cd ..

CMD []
ENTRYPOINT ["/usr/bin/dart", "/app/PolymorphicBot/bin/bot.dart", "."]
