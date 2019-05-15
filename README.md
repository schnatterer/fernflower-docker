fernflower-docker
===

[![Build Status](https://travis-ci.org/schnatterer/fernflower-docker.svg?branch=master)](https://travis-ci.org/schnatterer/fernflower-docker)

Unofficial docker images for [JetBrains FernFlower Java decompiler](https://github.com/JetBrains/intellij-community/tree/master/plugins/java-decompiler/engine)
basing on unofficial out-of-tree mirror [fesh0r/fernflower](https://github.com/fesh0r/fernflower).

# Usage

Simplest example:

```bash
docker run --rm -v $(pwd):/src schnatterer/fernflower /src/Hello.class /src/
```

See also:
* [fesh0r/fernflower](https://github.com/fesh0r/fernflower#command-line-options) for command line options.
* [test/smoketest.sh](test/smoketest.sh) a simple decompilation smoke test passed by these images

# Image flavors

The images are built daily, using the latest commit of fernflower and the `latest` version of the following base images.
See table bellow for more details.

* `native` - GraalVM (Substrate VM) native image in `scratch` image (default)
* `jre` - classic JVM/JRE-based (`adoptopenjdk/openjdk8`) 
* `alpine-jre` - classic JVM/JRE-based (`adoptopenjdk/openjdk8:alpine`) 
* `distroless` - classic JVM/JRE-based (`gcr.io/distroless/java:8`) 

For more deterministic builds, there are variants containing the git commits short hash referencing FernFlower's repo.


| Base Image | Size | Shell | Package Manager | libc | Basic Linux Folders | Static Binary |
|---|---|---|---|---| ---| --- |
| native | [![](https://images.microbadger.com/badges/image/schnatterer/fernflower:native.svg)](https://hub.docker.com/r/schnatterer/fernflower/tags) | ☐ | ☐ | ☐ | ☐ | ☒ | 
| jre| [![](https://images.microbadger.com/badges/image/schnatterer/fernflower:jre.svg)](https://hub.docker.com/r/schnatterer/fernflower/tags) | ☒ | ☒ | ☒ | ☒ | ☐ | 
| alpine-jre| [![](https://images.microbadger.com/badges/image/schnatterer/fernflower:alpine-jre.svg)](https://hub.docker.com/r/schnatterer/fernflower/tags) | ☒ | ☒ | ☒ | ☒ | ☐ |  
| distroless | [![](https://images.microbadger.com/badges/image/schnatterer/fernflower:distroless.svg)](https://hub.docker.com/r/schnatterer/fernflower/tags)  | ☐ | ☐ | ☐ | ☒ | ☐ | 


# Development

* `hooks/build` is picked up and executed by docker cloud build.
* Try locally: `SKIP_PUSH=true hooks/build`