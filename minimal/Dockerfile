FROM hackebein/steamcmd:latest

ARG BASEDIR=/opt/garrysmod
ONBUILD ARG BASEDIR=$BASEDIR

ENV BASEDIR=$BASEDIR \
    PORT="27015" \
    TICKRATE="66" \
    MAXPLAYERS="16" \
    #http://steamcommunity.com/dev/apikey
    AUTHKEY="" \
    WORKSHOPCOLLECTIONID="" \
    CLIENTPORT="27005" \
    # sandbox or terrortown
    GAMEMODE="sandbox" \
    MAP="gm_flatgrass" \
    #http://steamcommunity.com/dev/managegameservers APPID: 4000
    GLST="" \
    CONFIG="${GAMEMODE}.cfg" \
    CUSTOMPARAMETERS=""

RUN apt-get update -q \
 && apt-get install -yqq lib32tinfo5 gdb \
 && apt-get clean \
 && rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/* \
 && /usr/games/steamcmd \
        +login anonymous \
        +force_install_dir $BASEDIR \
        # garrysmod
        +app_update 4020 -validate -language en \
        +quit \
 && rm -rf $BASEDIR/garrysmod/cfg/* \
 && paxctl -cm "$BASEDIR/srcds_linux"

COPY cfg $BASEDIR/garrysmod/cfg

WORKDIR $BASEDIR

EXPOSE 27015/udp

CMD [ \
        "sh", \
        "-c", \
        "$BASEDIR/srcds_run \
        -game garrysmod \
        -strictportbind \
        -port ${PORT} \
        -tickrate ${TICKRATE} \
        -maxplayers ${MAXPLAYERS} \
        -authkey ${AUTHKEY} \
        +host_workshop_collection ${WORKSHOPCOLLECTIONID} \
        +clientport ${CLIENTPORT} \
        +gamemode ${GAMEMODE} \
        +map ${MAP} \
        +sv_setsteamaccount ${GLST} \
        +servercfgfile ${CONFIG} \
        ${CUSTOMPARAMETERS}" \
    ]