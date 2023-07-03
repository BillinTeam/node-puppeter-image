![Publish](https://github.com/francisco-sanchez-molina-org/node-puppeter-image/workflows/Publish/badge.svg)

# node-puppeter-image
Simple node + puppeter ready docker image

# Existing Packages
## Lastest
Use a NodeJs 14.x image
```
$ docker pull ghcr.io/billinteam/node-puppeter-image:latest
````

## 2.9
Use a NodeJs 16.x image
```
$ docker pull ghcr.io/billinteam/node-puppeter-image:2.9
````

# To generate a new package
    1 - Modify Dockerfile with the needed version and apt-get installations.
    2 - Modify the last line at '.github/workflows/publish.yml' to provide the version number.
    3 - Commit and push over main branch.
