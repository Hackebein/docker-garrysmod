# What is Garry's Mod?

Garry's Mod is a physics sandbox. There aren't any predefined aims or goals. We give you the tools and leave you to play.

# Update Hooks

* on base image update (supported by Docker Hub)
* on repository update (supported by Docker Hub)
* on steam repository content update (supported by [dexi.io](https://dexi.io))

# Quick Start

## Basic

```
docker run \
    --expose 27015 \
    hackebein/garrysmod
```

## Public

```
docker run \
    --expose 27015 \
    -e "GLST=..." \
    hackebein/garrysmod
```

Get your [GLST](http://steamcommunity.com/dev/managegameservers) (`APPID: 4000`)

## Public with Workshop Collection

```
docker run \
    --expose 27015 \
    -e "GLST=..." \
    -e "AUTHKEY=..." \
    -e "WORKSHOPCOLLECTIONID=..." \
    hackebein/garrysmod
```

Get your [AUTHKEY](http://steamcommunity.com/dev/apikey)

## Config

```
docker run \
    --expose 27015 \
    -e "GLST=..." \
    -e "AUTHKEY=..." \
    -e "WORKSHOPCOLLECTIONID=..." \
    -v ./mycfg:/opt/garrysmod/garrysmod/volume \
    hackebein/garrysmod
```

Autoload `{gamemode}.cfg` from volume.

By default environment you can mount files like `my.server.cfg` and `my.{gamemode}.cfg` for Server and gamemode specific configurations

```
docker run \
    --expose 27015 \
    -e "GLST=..." \
    -e "AUTHKEY=..." \
    -e "WORKSHOPCOLLECTIONID=..." \
    -v ./mycfg/my.server.cfg:/opt/garrysmod/garrysmod/volume/ \
    -v ./mycfg/my.terrortown.cfg:/opt/garrysmod/garrysmod/volume/ \
    hackebein/garrysmod
```

## Additional Environment

PORT: Connection Port
(`Default: 27015`)

TICKRATE: Tickrate of server, **Attention:** Change not recommended
(`Default: 66`)

CLIENTPORT:
(`Default: 27005`)

GAMEMODE: 
(`Default: sandbox`)

MAP: Map on Server start
(`Default: gm_flatgrass`)

CONFIG: Server config, **Attention:** Change not recommended
(`Default: server.cfg`)

MAXPLAYERS: Max players
(`Default: 16`)

LOADURLIMG: URL for LOADURL default
(`Default: <URL>`)

LOADURL: Loading screen URL
(`Default: <LOADURLIMG Fullscreen>`)

CUSTOMPARAMETERS: additional parameters
(`Default: `)
