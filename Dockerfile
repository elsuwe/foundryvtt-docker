FROM node:20-alpine

RUN deluser node && \
    mkdir /opt/foundryvtt && \
    mkdir /data && \
    mkdir /data/foundryvtt && \
    adduser --disabled-password fvtt && \
    chown fvtt:fvtt /opt/foundryvtt && \
    chown fvtt:fvtt /data/foundryvtt && \
    chmod g+s /opt/foundryvtt && \
    chmod g+s /data/foundryvtt
USER fvtt

COPY --chown=fvtt run-server.sh /opt
RUN chmod +x /opt/run-server.sh
VOLUME /data/foundryvtt
VOLUME /opt/foundryvtt

CMD ["sh", "/opt/run-server.sh"]
