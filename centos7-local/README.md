## Introduction

- Local CentOS 7 with SSH
## How to use

### Build

`docker build . -t centos-local`

### Run

`docker run -itd --name centos-local -p 2221:22 centos-local`
