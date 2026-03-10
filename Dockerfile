FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    cowsay \
    fortune-mod \
    netcat-openbsd \
    bash

ENV PATH="$PATH:/usr/games"

WORKDIR /app

COPY wisecow.sh /app/wisecow.sh

RUN chmod +x /app/wisecow.sh

EXPOSE 4499

CMD ["bash", "/app/wisecow.sh"]
