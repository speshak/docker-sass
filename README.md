# Docker SASS

A docker container for running the Node.js SASS CSS compiler.


## Usage 

```bash
docker run --rm -it \
  -v "`pwd`:/css:rw" \
  ghcr.io/speshak/docker-sass \
  sass --style=compressed /css/input.scss /css/output.css
```
