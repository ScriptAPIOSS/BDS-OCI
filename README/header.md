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

## Properties

This is a list of all server properties and the corresponding
environment variable to configure it. Some take specific
configuration, while others are freeform and will accept any string.
Not some values should be ranges. You can see notes on these
values and some undocumented (but still configurable) settings
in the `property-definitions.json` file.
