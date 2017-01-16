# Supported tags and respective `Dockerfile` links

* `minimal` [(minimal/Dockerfile)](https://github.com/Hackebein/docker-garrysmod/blob/master/minimal/Dockerfile)
* `recommended`, `latest` [(latest/Dockerfile)](https://github.com/Hackebein/docker-garrysmod/blob/master/basic/Dockerfile)
* ~~`full` [(full/Dockerfile)](https://github.com/Hackebein/docker-garrysmod/blob/master/full/Dockerfile).~~ coming soon
* ~~`beta` [(beta/Dockerfile)](https://github.com/Hackebein/docker-garrysmod/blob/master/beta/Dockerfile).~~ coming soon

# What is Garry's Mod?

Garry's Mod is a physics sandbox. There aren't any predefined aims or goals. We give you the tools and leave you to play.

# Update Hooks

* on base image update (supported by Docker Hub)
* on repository update (supported by Docker Hub)
* ~~on steam repository content update (supported by [Huginn](https://github.com/Hackebein/docker-garrysmod/blob/master/Huginn.json))~~ coming soon

# Quick Start

## Basic

docker run --expose 27015 hackebein/garrysmod

## Public

docker run --expose 27015 -e "GLST=..." hackebein/garrysmod

Get your [GLST](http://steamcommunity.com/dev/managegameservers) (`APPID: 4000`)

## Public with Workshop Collection

docker run --expose 27015 -e "GLST=..." -e "AUTHKEY=..." -e "WORKSHOPCOLLECTIONID=..." hackebein/garrysmod

Get your [AUTHKEY](http://steamcommunity.com/dev/apikey)

## Config

docker run --expose 27015 -e "GLST=..." -e "AUTHKEY=..." -e "WORKSHOPCOLLECTIONID=..." --volume ./mycfg:/opt/garrysmod/garrysmod/volume hackebein/garrysmod

Autoload `server.cfg` from volume.

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