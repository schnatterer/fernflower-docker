fernflower-docker
===

Builds docker images for [fesh0r/fernflower](https://github.com/fesh0r/fernflower).

## Development

* `hooks/build` is picked up and executed by docker cloud build.
* Try locally: `hooks/build`
 
#todo 
FROM adoptopenjdk/openjdk8:jre
FROM gcr.io/distroless/java:8
 