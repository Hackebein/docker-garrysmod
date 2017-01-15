FROM hackebein/garrysmod:minimal

ARG BASEDIR=/opt/garrysmod

RUN /usr/games/steamcmd \
    +login anonymous \
    +force_install_dir $BASEDIR \
    # cstrike
    +app_update 232330 -validate -language en \
    # garrysmod
    +app_update 4020 -validate -language en \
    +quit && \
    rm -rf $BASEDIR/garrysmod/cfg/*

COPY cfg $BASEDIR/garrysmod/cfg