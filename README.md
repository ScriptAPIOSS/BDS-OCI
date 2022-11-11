# Minecraft BDS versions

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

<table>
  <tr><th><strong>Property Name</strong></th><th><strong>ENV</strong></th><th><strong>Type</strong></th><th><strong>Enums</strong></th></tr>
<tr><td>emit-server-telemetry</td><td><code>EMIT_SERVER_TELEMETRY</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>server-name</td><td><code>SERVER_NAME</code></td><td>string</td><td></td></tr>

<tr><td>gamemode</td><td><code>GAMEMODE</code></td><td>string</td><td><code>survival</code><br>
<code>creative</code><br>
<code>adventure</code><br></td></tr>

<tr><td>force-gamemode</td><td><code>FORCE_GAMEMODE</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>difficulty</td><td><code>DIFFICULTY</code></td><td>string</td><td><code>easy</code><br>
<code>peaceful</code><br>
<code>normal</code><br>
<code>hard</code><br></td></tr>

<tr><td>allow-cheats</td><td><code>ALLOW_CHEATS</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>max-players</td><td><code>MAX_PLAYERS</code></td><td>int32</td><td></td></tr>

<tr><td>online-mode</td><td><code>ONLINE_MODE</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>allow-list</td><td><code>ALLOW_LIST</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>server-port</td><td><code>SERVER_PORT</code></td><td>int32</td><td></td></tr>

<tr><td>server-portv6</td><td><code>SERVER_PORT_V6</code></td><td>int32</td><td></td></tr>

<tr><td>enable-lan-visibility</td><td><code>ENABLE_LAN_VISIBILITY</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>view-distance</td><td><code>VIEW_DISTANCE</code></td><td>int32</td><td></td></tr>

<tr><td>tick-distance</td><td><code>TICK_DISTANCE</code></td><td>int32</td><td></td></tr>

<tr><td>player-idle-timeout</td><td><code>PLAYER_IDLE_TIMEOUT</code></td><td>int32</td><td></td></tr>

<tr><td>max-threads</td><td><code>MAX_THREADS</code></td><td>int32</td><td></td></tr>

<tr><td>level-name</td><td><code>LEVEL_NAME</code></td><td>string</td><td></td></tr>

<tr><td>level-seed</td><td><code>LEVEL_SEED</code></td><td>string</td><td></td></tr>

<tr><td>default-player-permission-level</td><td><code>DEFAULT_PLAYER_PERMISSION_LEVEL</code></td><td>string</td><td><code>visitor</code><br>
<code>member</code><br>
<code>operator</code><br></td></tr>

<tr><td>texturepack-required</td><td><code>TEXTUREPACK_REQUIRED</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>content-log-file-enabled</td><td><code>CONTENT_LOG_FILE_ENABLED</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>compression-threshold</td><td><code>COMPRESSION_THRESHOLD</code></td><td>int32</td><td></td></tr>

<tr><td>compression-algorithm</td><td><code>COMPRESSION_ALGORITHM</code></td><td>string</td><td><code>zlib</code><br>
<code>snappy</code><br></td></tr>

<tr><td>server-authoritative-movement</td><td><code>SERVER_AUTHORITATIVE_MOVEMENT</code></td><td>string</td><td><code>server-auth</code><br>
<code>client-auth</code><br>
<code>server-auth-with-rewind</code><br></td></tr>

<tr><td>player-movement-score-threshold</td><td><code>PLAYER_MOVEMENT_SCORE_THRESHOLD</code></td><td>float</td><td></td></tr>

<tr><td>player-movement-action-direction-threshold</td><td><code>PLAYER_MOVEMENT_ACTION_DIRECTION_THRESHOLD</code></td><td>float</td><td></td></tr>

<tr><td>player-movement-distance-threshold</td><td><code>PLAYER_MOVEMENT_DISTANCE_THRESHOLD</code></td><td>float</td><td></td></tr>

<tr><td>player-movement-duration-threshold-in-ms</td><td><code>PLAYER_MOVEMENT_DURATION_THRESHOLD_IN_MS</code></td><td>int32</td><td></td></tr>

<tr><td>correct-player-movement</td><td><code>CORRECT_PLAYER_MOVEMENT</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>server-authoritative-block-breaking</td><td><code>SERVER_AUTHORITATIVE_BLOCK_BREAKING</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>chat-restriction</td><td><code>CHAT_RESTRICTION</code></td><td>string</td><td><code>None</code><br>
<code>Dropped</code><br>
<code>Disabled</code><br></td></tr>

<tr><td>disable-player-interaction</td><td><code>DISABLE_PLAYER_INTERACTION</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

<tr><td>client-side-chunk-generation-enabled</td><td><code>CLIENT_SIDE_CHUNK_GENERATION_ENABLED</code></td><td>bool</td><td><code>true</code><br>
<code>false</code><br></td></tr>

</table>

## Notable mentions

Thanks to the following projects for either documentation, or inspiration on
techniques to maintain the server:

- https://github.com/itzg/docker-minecraft-bedrock-server

