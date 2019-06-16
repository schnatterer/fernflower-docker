FROM oracle/graalvm-ce:19.0.2 AS native-image
COPY . /app
WORKDIR /app
RUN chmod +x gradlew
RUN ./gradlew jar

RUN gu install native-image
RUN native-image -H:Name=fernflower -H:+ReportExceptionStackTraces --static -jar build/libs/fernflower.jar

FROM scratch
COPY --from=native-image /app/fernflower /fernflower
ENTRYPOINT ["/fernflower"]

ARG VCS_REF
ARG SOURCE_REPOSITORY_URL
ARG GIT_TAG
ARG BUILD_DATE
# See https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.created="${BUILD_DATE}" \
      org.opencontainers.image.authors="schnatterer" \
      org.opencontainers.image.url="https://hub.docker.com/r/schnatterer/fernflower/" \
      org.opencontainers.image.documentation="https://hub.docker.com/r/schnatterer/fernflower/" \
      org.opencontainers.image.source="${SOURCE_REPOSITORY_URL}" \
      org.opencontainers.image.version="${GIT_TAG}" \
      org.opencontainers.image.revision="${VCS_REF}" \
      org.opencontainers.image.vendor="JetBrains" \
      org.opencontainers.image.licenses="Apache-2.0" \
      org.opencontainers.image.title="fernflower" \
      org.opencontainers.image.description="Fernflower is the first actually working analytical decompiler for Java and probably for a high-level programming language in general."
