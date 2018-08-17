FROM hackebein/srcds

ENV APPS="4020" \
    TICKRATE="66" \
    MAXPLAYERS="16" \
    #http://steamcommunity.com/dev/apikey
    AUTHKEY="" \
    WORKSHOPCOLLECTIONID="" \
    # sandbox or terrortown
    GAMEMODE="sandbox" \
    MAP="gm_flatgrass" \
    #http://steamcommunity.com/dev/managegameservers APPID: 4000
    GLST="" \
    CONFIG="server.cfg" \
    CUSTOMPARAMETERS="" \
    SRCDSPARAMS="\
        -game garrysmod \
        -tickrate ${TICKRATE} \
        -maxplayers ${MAXPLAYERS} \
        -authkey ${AUTHKEY} \
        +host_workshop_collection ${WORKSHOPCOLLECTIONID} \
        +gamemode ${GAMEMODE} \
        +map ${MAP} \
        +sv_setsteamaccount ${GLST} \
        +servercfgfile ${CONFIG} \
        ${CUSTOMPARAMETERS} \
    "

COPY cfg $BASEDIR/garrysmod/cfg