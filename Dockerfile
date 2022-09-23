FROM mongo:5.0
    ARG DATABASE_URI
    ARG USERNAME
    ARG PASSWORD

    ENV mongodb+srv://gablopes:<password>@cluster0.wf80wj8.mongodb.net/test ${DATABASE_URI}
    ENV gablopes ${USERNAME}
    ENV 22032004Gab ${PASSWORD}

    COPY factors.json /TabelaTimes
    
    CMD mongoimport --gablopes ${USERNAME} --1234 ${PASSWORD} --mongodb+srv://gablopes:<22032004Gab>@cluster0.wf80wj8.mongodb.net/test ${DATABASE_URI} --collection factors --drop --file /TabelaTimes.json && \
    CMD mongoimport --gablopes ${USERNAME} --1234 ${PASSWORD} --mongodb+srv://gablopes:<22032004Gab>@cluster0.wf80wj8.mongodb.net/test ${DATABASE_URI} --collection factors --drop --file /TabelaTimes.json

LABEL Name=sistemasweb Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
