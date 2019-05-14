fernflower-docker
===

Builds docker images for [fesh0r/fernflower](https://github.com/fesh0r/fernflower).

## Development

* `hooks/build` is picked up and executed by docker cloud build.
* Try locally: `IMAGE_NAME=fernflower hooks/build`
* `git clean -fd` in case any files remain
 