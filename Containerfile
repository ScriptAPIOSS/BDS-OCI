FROM alpine:3.16.2 AS builder

ARG PATH_MODIFIER
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

COPY checksums.txt /work/checksums.txt

RUN apk add wget unzip jq curl

RUN wget https://github.com/itzg/set-property/releases/download/0.1.1/set-property_0.1.1_linux_amd64.tar.gz
RUN sha256sum -c checksums.txt
RUN tar -xvf set-property_0.1.1_linux_amd64.tar.gz
RUN mv LICENSE set-property-LICENSE && rm README.md

RUN BDS_URL=`curl -s https://raw.githubusercontent.com/ScriptAPIOSS/BDS-Versions/main/linux${PATH_MODIFIER}/${BDS_VERSION}.json | jq -r '.download_url'` && wget -q ${BDS_URL} -O bds.zip
RUN unzip bds.zip
RUN rm bds.zip bedrock_server_* release-notes.txt

FROM ubuntu:jammy-20220815

ENV LD_LIBRARY_PATH=./additional_libs/

EXPOSE "19132/udp"
EXPOSE "19133/udp"

RUN apt update && \
    apt install -y libnghttp2-14 libcurl4 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group  /etc/group

COPY property-definitions.json /etc/property-definitions.json

COPY --from=builder --chown=10001:0 --chmod=700 /work/   /bedrock-server/
COPY                --chown=10001:0 --chmod=700 entry.sh /opt/entry.sh

RUN chmod +x /opt/entry.sh
RUN chmod +x /bedrock-server/bedrock_server

WORKDIR /bedrock-server

USER 10001:0

VOLUME /bedrock-server/worlds /bedrock-server/configs

ENTRYPOINT ["/opt/entry.sh"]
