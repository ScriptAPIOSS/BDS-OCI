FROM alpine:3.16.2 AS builder

ARG BDS_VERSION

ENV USER=bds
ENV UID=10001

RUN adduser \    
    --disabled-password \    
    --gecos "" \    
    --home "/nonexistent" \    
    --shell "/sbin/nologin" \    
    --no-create-home \    
    --uid "${UID}" \    
    "${USER}"

WORKDIR /work/

RUN apk add wget unzip jq curl

RUN BDS_URL=`curl -s https://raw.githubusercontent.com/ScriptAPIOSS/BDS-Versions/main/linux/${BDS_VERSION}.json | jq -r '.download_url'` && wget -q ${BDS_URL} -O bds.zip
RUN unzip bds.zip
RUN rm bds.zip bedrock_server_how_to.html bedrock_server_symbols.debug release-notes.txt

FROM ubuntu:jammy-20220815

ENV LD_LIBRARY_PATH=./additional_libs/

EXPOSE "19132/udp"
EXPOSE "19133/udp"

RUN apt update && apt install -y libnghttp2-14 libcurl4 && rm -rf /var/lib/apt/lists/*

COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group

COPY --chown=10001:0 --chmod=700 --from=builder /work/ /bedrock-server/

RUN chmod +x /bedrock-server/bedrock_server

WORKDIR /bedrock-server

USER 10001:0

RUN mkdir /bedrock-server/configs && \
  mv /bedrock-server/server.properties /bedrock-server/configs && \
  mv /bedrock-server/permissions.json /bedrock-server/configs && \
  ln -s /bedrock-server/configs/server.properties /bedrock-server/server.properties && \
  ln -s /bedrock-server/configs/permissions.json /bedrock-server/permissions.json

VOLUME /bedrock-server/worlds /bedrock-server/configs

CMD ["/bedrock-server/bedrock_server"]  