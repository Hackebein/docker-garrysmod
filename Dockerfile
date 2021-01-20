FROM hackebein/srcds

ENV \
	# App
	APPS="4020 -validate -language en,232330 -validate -language en" \
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
	# Workshop server download (require API)
	WORKSHOP="\${WORKSHOPCOLLECTIONID:-}" \
	#
	# Workshop client download (require API)
	WORKSHOPDL="" \
	#
	# Server config
	GAME="garrysmod" \
	TICKRATE="66" \
	MAXPLAYERS="16" \
	GAMEMODE="sandbox" \
	GAMETYPE="0" \
	MAP="gm_flatgrass" \
	MAPGROUP="mg_active" \
	CONFIG="server.cfg" \
	#
	# Start parameters
	SRCDSPARAMS="\
		-game \${GAME} \
		-tickrate \${TICKRATE} \
		-maxplayers \${MAXPLAYERS} \
		-authkey \${AUTHKEY} \
		+host_workshop_collection \${WORKSHOP} \
		+gamemode \${GAMEMODE} \
		+map \${MAP} \
		+servercfgfile \${CONFIG} \
		\${CUSTOMPARAMETERS} \
	"
