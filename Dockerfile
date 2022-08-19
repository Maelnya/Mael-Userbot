#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Mael-Userbot https://github.com/Maelnya/Mael-Userbot /home/maeluserbot/ \
    && chmod 777 /home/maeluserbot \
    && mkdir /home/maeluserbot/bin/

COPY ./sample_config.env ./config.env* /home/maeluserbot/

WORKDIR /home/maeluserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
