# Docker images for Angular projects

Set of configurations to build docker images for Angular-based development projects.

## Table of Contents

- [Building a docker image](#building-a-docker-image)
- [Version compatibility](#version-compatibility)
- [Reference](#reference)

## Building a docker image

To build a docker image follow next steps:

1. Clone this repository.

```bash
git init https://github.com/igarciadev/docker-images.git
```

2. Run the bash script with the version number to create a docker image.

```bash
./build:x.x.sh
```

## Version compatibility

| Angular CLI version | Angular version | Node.js version | TypeScript version | RxJS version |
| :- | :- | :- | :- | :- |
| 7.3.9 | 7.2.x |8.9.x/10.9.x or later minor version | 3.2.x | 6.3.x or later minor version |
| 8.3.29 | 8.2.x | 10.9.x or later minor version | 3.5.x | 6.4.x or later minor version |
| 12.2.x | 12.2.x | 12.14.x/14.15.x or later minor version | 4.2.x/4.3.x | 6.5.x/6.6.x/7.0.x or later minor version |

## Reference

[Official list of Node releases](https://nodejs.org/es/download/releases/)

[Official Docker image for Node](https://hub.docker.com/_/node)

[Official list Angular-CLI releases](https://www.npmjs.com/package/@angular/cli?activeTab=versions)

[Compatibility list for Angular/Angular-CLI, Node, TypeScript and RxJS](https://gist.github.com/LayZeeDK/c822cc812f75bb07b7c55d07ba2719b3)