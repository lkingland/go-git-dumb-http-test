# go-git v1 http test

This repository is a test of the go-git library cloning 
a local HTTP server hosted as a bare repository using git v1
HTTP ("dumb").

Read more about [Git Dumb HTTP](https://git-scm.com/book/en/v2/Git-on-the-Server-The-Protocols)

## Setup

run `setup.sh` which creates a bare `test.git` repository in the current directory, and runs `git update-server-info` to prep it for being hosted via a simple HTTP fileserver.

## Test

run `go run` which starts a local HTTP server hosting the `test.git` repository, and then clones the repository into memory using to `go-git` library.


