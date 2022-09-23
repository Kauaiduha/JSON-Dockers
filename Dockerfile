FROM mongo:5.0
    ARG DATABASE_URI
    ARG USERNAME
    ARG PASSWORD

    ENV DATABASE_URI ${DATABASE_URI}
    ENV USERNAME ${USERNAME}
    ENV PASSWORD ${PASSWORD}

    COPY factors.json /factors.json
    COPY filters.json /filters.json

    CMD mongoimport --gablopes ${USERNAME} --1234 ${PASSWORD} --uri ${DATABASE_URI} --collection factors --drop --file /factors.json && \
    CMD mongoimport --gablopes ${USERNAME} --1234 ${PASSWORD} --uri ${DATABASE_URI} --collection factors --drop --file /factors.json

LABEL Name=sistemasweb Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]