ARG BUILD_FROM
FROM $BUILD_FROM

ARG BUILD_ARCH=amd64
ARG BUILD_VERSION=1.2.13

ENV LANG C.UTF-8

RUN apk add --no-cache jq

# Copy data for add-on
ADD https://artifacts.brickchain.com/hass-proxy-${BUILD_VERSION}-${BUILD_ARCH} /hass-proxy
RUN chmod a+x /hass-proxy

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
