fernflower-docker
===

Unofficial docker images for [JetBrains FernFlower Java decompiler](https://github.com/JetBrains/intellij-community/tree/master/plugins/java-decompiler/engine)
basing on unofficial out-of-tree mirror [fesh0r/fernflower](https://github.com/fesh0r/fernflower).

# Image flavors

* `native` - GraalVM (Substrate VM) native image in `scratch` image (default)
* `jre` - classic JVM/JRE-based (`adoptopenjdk/openjdk8`) 
* `alpine` - classic JVM/JRE-based (`adoptopenjdk/openjdk8:alpine`) 
* `distroless` - classic JVM/JRE-based (`gcr.io/distroless/java:8`) 

For deterministic builds, there are variants containing the git commits short hash referencing FernFlower's repo.

## Development

* `hooks/build` is picked up and executed by docker cloud build.
* Try locally: `SKIP_PUSH=true hooks/build`