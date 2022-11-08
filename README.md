# BDS-OCI
OCI Images for Minecraft BDS

To run this image:

```
docker pull ghcr.io/scriptapioss/bedrock-server:latest
docker run -it -e EULA_ACCEPT=true -e PP_ACCEPT=true ghcr.io/scriptapioss/bedrock-server:latest

# OR

podman pull ghcr.io/scriptapioss/bedrock-server:latest
podman run -it -e EULA_ACCEPT=true -e PP_ACCEPT=true ghcr.io/scriptapioss/bedrock-server:latest
```

## Notable mentions

Thanks to the following projects for either documentation, or inspiration on
techniques to maintain the server:

- https://github.com/itzg/docker-minecraft-bedrock-server