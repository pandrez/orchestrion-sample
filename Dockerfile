FROM docker.io/golang:1.24 AS builder

WORKDIR /workspace
# Copy the Go Modules manifests
COPY go.mod go.mod
COPY go.sum go.sum

# Copy the go source
COPY main.go main.go

RUN go install github.com/DataDog/orchestrion@latest && \
    orchestrion pin && \
    export GOFLAGS="${GOFLAGS} '-toolexec=orchestrion toolexec'" && \
    export CGO_ENABLED=0 && \
    go build .

FROM gcr.io/distroless/static:nonroot

WORKDIR /
COPY --from=builder /workspace/sample .

ENTRYPOINT ["/sample"]
