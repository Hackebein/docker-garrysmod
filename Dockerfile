FROM hackebein/srcds

ENV \
	# App
	APPS="4020" \
	#
	# Public access
	# APPID: 4000
	# http://steamcommunity.com/dev/managegameservers
	GLST="" \
	#
	# Workshop config
	# http://steamcommunity.com/dev/apikey
	AUTHKEY="" \
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
		+sv_setsteamaccount \${GLST} \
		+servercfgfile \${CONFIG} \
		\${CUSTOMPARAMETERS} \
	"

COPY cfg $BASEDIR/garrysmod/cfg