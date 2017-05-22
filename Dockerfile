FROM golang
ADD . /go/src/github.com/coreos/etcd
ADD . /go/src/github.com/coreos/etcdctl
ADD cmd/vendor /go/src/github.com/coreos/etcd/vendor
RUN go install github.com/coreos/etcd
RUN go install github.com/coreos/etcdctl
EXPOSE 2379 2380
ENTRYPOINT ["etcd"]
