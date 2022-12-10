# INFORMATION
This is a small image to us for the Dungeons, Dragons and Space Shuttles Minecraft Mod-pack plugin 

### [mod-pack](https://www.curseforge.com/minecraft/modpacks/dungeons-dragons-and-space-shuttles)

I am NOT the author of the Mod-pack I just need a container and build this.
If someone needs also a container for DSS feel free to use it

# Quick install
just use 
* ``git clone https://github.com/mari0theminer/dungeons-dragons-and-space-shuttles-minecraft-docker.git``
 
  or 
* copy the docker-compose.yaml from the repo 
* run docker-compose up -d 
* be happy ^^

# HOW TO 
### Get to terminal 
* Run ``docker-compose run -it mc ``
### Get op 
* use the env var OP

# ENV VARS 
| ENV name | default | what does it do ?                                                     |
|----------|---------|-----------------------------------------------------------------------|
| EULA     | false   | minecraft eula settings pls set it to ``true`` after reading the EULA |
| Xms      | 1024    | Minimum RAM                                                           |
| XmsM     | 6048    | Maximum RAM                                                           |
| OP        |         | a list of players to make op                                          |

# BSP docker-compose config

```
version: "3"
services:
    mc:
        image: mari0theminer/dss_mc
        container_name: "Minecraft_DDS_Server"
        ports:
            -   25565:25565
        volumes:
            -   DDS:/app
        environment:
            EULA: "true"
            OP: ""
        restart: always
volumes:
    DDS:
```
