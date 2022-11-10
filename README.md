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
  <tr><th><strong>Property Name</strong></th><th><strong>ENV</strong></th><th><strong>Enums</strong></th></tr>
<tr><td> <code>allow-cheats</code> </td>
<td>

```bash
ALLOW_CHEATS
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>allow-list</code> </td>
<td>

```bash
ALLOW_LIST
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>chat-restriction</code> </td>
<td>

```bash
CHAT_RESTRICTION
```

</td>
<td>
<ul><li><code>None</code></li>
<li><code>Dropped</code></li>
<li><code>Disabled</code></li></ul>
</td>
</tr>
<tr><td> <code>client-side-chunk-generation-enabled</code> </td>
<td>

```bash
CLIENT_SIDE_CHUNK_GENERATION_ENABLED
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>compression-algorithm</code> </td>
<td>

```bash
COMPRESSION_ALGORITHM
```

</td>
<td>
<ul><li><code>zlib</code></li>
<li><code>snappy</code></li></ul>
</td>
</tr>
<tr><td> <code>compression-threshold</code> </td>
<td>

```bash
COMPRESSION_THRESHOLD
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>content-log-file-enabled</code> </td>
<td>

```bash
CONTENT_LOG_FILE_ENABLED
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>correct-player-movement</code> </td>
<td>

```bash
CORRECT_PLAYER_MOVEMENT
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>default-player-permission-level</code> </td>
<td>

```bash
DEFAULT_PLAYER_PERMISSION_LEVEL
```

</td>
<td>
<ul><li><code>visitor</code></li>
<li><code>member</code></li>
<li><code>operator</code></li></ul>
</td>
</tr>
<tr><td> <code>difficulty</code> </td>
<td>

```bash
DIFFICULTY
```

</td>
<td>
<ul><li><code>easy</code></li>
<li><code>peaceful</code></li>
<li><code>normal</code></li>
<li><code>hard</code></li></ul>
</td>
</tr>
<tr><td> <code>disable-player-interaction</code> </td>
<td>

```bash
DISABLE_PLAYER_INTERACTION
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>emit-server-telemetry</code> </td>
<td>

```bash
EMIT_SERVER_TELEMETRY
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>enable-lan-visibility</code> </td>
<td>

```bash
ENABLE_LAN_VISIBILITY
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>force-gamemode</code> </td>
<td>

```bash
FORCE_GAMEMODE
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>gamemode</code> </td>
<td>

```bash
GAMEMODE
```

</td>
<td>
<ul><li><code>survival</code></li>
<li><code>creative</code></li>
<li><code>adventure</code></li></ul>
</td>
</tr>
<tr><td> <code>level-name</code> </td>
<td>

```bash
LEVEL_NAME
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>level-seed</code> </td>
<td>

```bash
LEVEL_SEED
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>level-type</code> </td>
<td>

```bash
LEVEL_TYPE
```

</td>
<td>
<ul><li><code>DEFAULT</code></li>
<li><code>FLAT</code></li>
<li><code>LEGACY</code></li></ul>
</td>
</tr>
<tr><td> <code>max-players</code> </td>
<td>

```bash
MAX_PLAYERS
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>max-threads</code> </td>
<td>

```bash
MAX_THREADS
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>online-mode</code> </td>
<td>

```bash
ONLINE_MODE
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>player-idle-timeout</code> </td>
<td>

```bash
PLAYER_IDLE_TIMEOUT
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>player-movement-action-direction-threshold</code> </td>
<td>

```bash
PLAYER_MOVEMENT_ACTION_DIRECTION_THRESHOLD
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>player-movement-distance-threshold</code> </td>
<td>

```bash
PLAYER_MOVEMENT_DISTANCE_THRESHOLD
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>player-movement-duration-threshold-in-ms</code> </td>
<td>

```bash
PLAYER_MOVEMENT_DURATION_THRESHOLD_IN_MS
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>player-movement-score-threshold</code> </td>
<td>

```bash
PLAYER_MOVEMENT_SCORE_THRESHOLD
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>server-authoritative-block-breaking</code> </td>
<td>

```bash
SERVER_AUTHORITATIVE_BLOCK_BREAKING
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>server-authoritative-movement</code> </td>
<td>

```bash
SERVER_AUTHORITATIVE_MOVEMENT
```

</td>
<td>
<ul><li><code>server-auth</code></li>
<li><code>client-auth</code></li>
<li><code>server-auth-with-rewind</code></li></ul>
</td>
</tr>
<tr><td> <code>server-name</code> </td>
<td>

```bash
SERVER_NAME
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>server-port</code> </td>
<td>

```bash
SERVER_PORT
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>server-portv6</code> </td>
<td>

```bash
SERVER_PORT_V6
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>texturepack-required</code> </td>
<td>

```bash
TEXTUREPACK_REQUIRED
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> <code>tick-distance</code> </td>
<td>

```bash
TICK_DISTANCE
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>view-distance</code> </td>
<td>

```bash
VIEW_DISTANCE
```

</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> <code>white-list</code> </td>
<td>

```bash
WHITE_LIST
```

</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
</table>

## Notable mentions

Thanks to the following projects for either documentation, or inspiration on
techniques to maintain the server:

- https://github.com/itzg/docker-minecraft-bedrock-server

