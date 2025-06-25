# Datadog Orchestrion error sample

This project contains a simple gin project and a Dockerfile that buils the project with orchestrion.

When building the image, this error should be reproducible.

```bash
 go: sample imports
       gopkg.in/DataDog/dd-trace-go.v1 imports
       gopkg.in/DataDog/dd-trace-go.v1/contrib/confluentinc/confluent-kafka-go/kafka.v2 imports
       github.com/confluentinc/confluent-kafka-go/v2/kafka tested by
       github.com/confluentinc/confluent-kafka-go/v2/kafka.test imports
       github.com/testcontainers/testcontainers-go/modules/compose imports
       github.com/docker/compose/v2/pkg/compose imports
       github.com/moby/buildkit/client imports
       github.com/containerd/containerd/api/services/content/v1: ambiguous import: found package github.com/containerd/containerd/api/services/content/v1 in multiple modules:
       github.com/containerd/containerd v1.7.12 (/go/pkg/mod/github.com/containerd/containerd@v1.7.12/api/services/content/v1)
       github.com/containerd/containerd/api v1.9.0 (/go/pkg/mod/github.com/containerd/containerd/api@v1.9.0/services/content/v1)
 editing "/workspace/go.mod": running `go mod tidy`: exit status 1
```

## Prerequisites

- [Docker](https://www.docker.com/) installed on your system.

## Usage

### Build the Docker Image

To build the Docker image, run the following command:

```bash
make docker-build
```
