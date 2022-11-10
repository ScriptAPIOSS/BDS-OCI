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
<tr><td> allow-cheats </td>
<td>
<code>ALLOW_CHEATS</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> allow-list </td>
<td>
<code>ALLOW_LIST</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> chat-restriction </td>
<td>
<code>CHAT_RESTRICTION</code>
</td>
<td>
<ul><li><code>None</code></li>
<li><code>Dropped</code></li>
<li><code>Disabled</code></li></ul>
</td>
</tr>
<tr><td> client-side-chunk-generation-enabled </td>
<td>
<code>CLIENT_SIDE_CHUNK_GENERATION_ENABLED</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> compression-algorithm </td>
<td>
<code>COMPRESSION_ALGORITHM</code>
</td>
<td>
<ul><li><code>zlib</code></li>
<li><code>snappy</code></li></ul>
</td>
</tr>
<tr><td> compression-threshold </td>
<td>
<code>COMPRESSION_THRESHOLD</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> content-log-file-enabled </td>
<td>
<code>CONTENT_LOG_FILE_ENABLED</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> correct-player-movement </td>
<td>
<code>CORRECT_PLAYER_MOVEMENT</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> default-player-permission-level </td>
<td>
<code>DEFAULT_PLAYER_PERMISSION_LEVEL</code>
</td>
<td>
<ul><li><code>visitor</code></li>
<li><code>member</code></li>
<li><code>operator</code></li></ul>
</td>
</tr>
<tr><td> difficulty </td>
<td>
<code>DIFFICULTY</code>
</td>
<td>
<ul><li><code>easy</code></li>
<li><code>peaceful</code></li>
<li><code>normal</code></li>
<li><code>hard</code></li></ul>
</td>
</tr>
<tr><td> disable-player-interaction </td>
<td>
<code>DISABLE_PLAYER_INTERACTION</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> emit-server-telemetry </td>
<td>
<code>EMIT_SERVER_TELEMETRY</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> enable-lan-visibility </td>
<td>
<code>ENABLE_LAN_VISIBILITY</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> force-gamemode </td>
<td>
<code>FORCE_GAMEMODE</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> gamemode </td>
<td>
<code>GAMEMODE</code>
</td>
<td>
<ul><li><code>survival</code></li>
<li><code>creative</code></li>
<li><code>adventure</code></li></ul>
</td>
</tr>
<tr><td> level-name </td>
<td>
<code>LEVEL_NAME</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> level-seed </td>
<td>
<code>LEVEL_SEED</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> level-type </td>
<td>
<code>LEVEL_TYPE</code>
</td>
<td>
<ul><li><code>DEFAULT</code></li>
<li><code>FLAT</code></li>
<li><code>LEGACY</code></li></ul>
</td>
</tr>
<tr><td> max-players </td>
<td>
<code>MAX_PLAYERS</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> max-threads </td>
<td>
<code>MAX_THREADS</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> online-mode </td>
<td>
<code>ONLINE_MODE</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> player-idle-timeout </td>
<td>
<code>PLAYER_IDLE_TIMEOUT</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> player-movement-action-direction-threshold </td>
<td>
<code>PLAYER_MOVEMENT_ACTION_DIRECTION_THRESHOLD</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> player-movement-distance-threshold </td>
<td>
<code>PLAYER_MOVEMENT_DISTANCE_THRESHOLD</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> player-movement-duration-threshold-in-ms </td>
<td>
<code>PLAYER_MOVEMENT_DURATION_THRESHOLD_IN_MS</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> player-movement-score-threshold </td>
<td>
<code>PLAYER_MOVEMENT_SCORE_THRESHOLD</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> server-authoritative-block-breaking </td>
<td>
<code>SERVER_AUTHORITATIVE_BLOCK_BREAKING</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> server-authoritative-movement </td>
<td>
<code>SERVER_AUTHORITATIVE_MOVEMENT</code>
</td>
<td>
<ul><li><code>server-auth</code></li>
<li><code>client-auth</code></li>
<li><code>server-auth-with-rewind</code></li></ul>
</td>
</tr>
<tr><td> server-name </td>
<td>
<code>SERVER_NAME</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> server-port </td>
<td>
<code>SERVER_PORT</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> server-portv6 </td>
<td>
<code>SERVER_PORT_V6</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> texturepack-required </td>
<td>
<code>TEXTUREPACK_REQUIRED</code>
</td>
<td>
<ul><li><code>true</code></li>
<li><code>false</code></li></ul>
</td>
</tr>
<tr><td> tick-distance </td>
<td>
<code>TICK_DISTANCE</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> view-distance </td>
<td>
<code>VIEW_DISTANCE</code>
</td>
<td>
<ul></ul>
</td>
</tr>
<tr><td> white-list </td>
<td>
<code>WHITE_LIST</code>
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

