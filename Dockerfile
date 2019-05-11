FROM hackebein/srcds

ENV \
	SIGNALS_ENABLE="false" \
	# App
	APPS="4020" \
	#
	# API
	# http://steamcommunity.com/dev/apikey
	AUTHKEY="" \
	#
	# Public access
	# automatic via API
	GLSTAPP="4000" \
	# manual
	# APPID: 4000
	# http://steamcommunity.com/dev/managegameservers
	GLST="" \
	#
	# Workshop (require API)
	WORKSHOPCOLLECTIONID="" \
	#
	# Server config
	TICKRATE="66" \
	MAXPLAYERS="16" \
	GAMEMODE="sandbox" \
	GAMETYPE="0" \
	MAP="gm_flatgrass" \
	MAPGROUP="mg_active" \
	CONFIG="server.cfg" \
	#
	# Other
	CUSTOMPARAMETERS="" \
	#
	# Start parameters
	SRCDSPARAMS="\
		-game garrysmod \
		-tickrate \${TICKRATE} \
		-maxplayers \${MAXPLAYERS} \
		-authkey \${AUTHKEY} \
		+host_workshop_collection \${WORKSHOPCOLLECTIONID} \
		+gamemode \${GAMEMODE} \
		+map \${MAP} \
		+servercfgfile \${CONFIG} \
		\${CUSTOMPARAMETERS} \
	"

COPY cfg $BASEDIR/garrysmod/cfg
