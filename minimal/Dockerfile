FROM hackebein/steamcmd:latest
MAINTAINER Lars Olzem <hackebein@gmail.com>

ARG BASEDIR=/opt/garrysmod

ENV BASEDIR=$BASEDIR
    PORT="27015" \
    TICKRATE="66" \
    WORKSHOPCOLLECTIONID="" \
    #http://steamcommunity.com/dev/apikey
    AUTHKEY="" \
    CLIENTPORT="27005" \
    GAMEMODE="sandbox" \
    MAP="gm_flatgrass" \
    #http://steamcommunity.com/dev/managegameservers APPID: 4000
    GLST="" \
    CONFIG="server.cfg" \
    MAXPLAYERS="16" \
    LOADURLIMG="http://www.pixelstalk.net/wp-content/uploads/2016/03/Cracked-Screen-Background-cute.jpg" \
    LOADURL="data:text/html, <style>html, body{ padding:0;margin:0;background:#000 }</style><img src='${LOADURLIMG}' width='100%' height='100%'>" \
    CUSTOMPARAMETERS=""

RUN apt-get update -q && \
    apt-get install -yqq lib32tinfo5 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN /usr/games/steamcmd \
    +login anonymous \
    +force_install_dir $BASEDIR \
    # garrysmod
    +app_update 4020 -validate -language en \
    +quit && \
    rm -rf $BASEDIR/garrysmod/cfg/*

COPY cfg $BASEDIR/garrysmod/cfg

VOLUME [ "$BASEDIR/garrysmod/volume" ]

WORKDIR $BASEDIR

EXPOSE 27015/udp 27015/tcp

ENTRYPOINT []
CMD [ \
        "sh", \
        "-c", \
        "$BASEDIR/srcds_run \
        -game garrysmod \
        -strictportbind \
        -port ${PORT} \
        -tickrate ${TICKRATE} \
        +host_workshop_collection ${WORKSHOPCOLLECTIONID} \
        -authkey ${AUTHKEY} \
        +clientport ${CLIENTPORT} \
        +gamemode ${GAMEMODE} \
        +map ${MAP} \
        +sv_setsteamaccount ${GLST} \
        +servercfgfile ${CONFIG} \
        -maxplayers ${MAXPLAYERS} \
        +sv_loadingurl ${LOADURL} \
        ${CUSTOMPARAMETERS}" \
    ]