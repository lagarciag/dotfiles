#!/bin/bash

set -e

go get -u github.com/spf13/cobra
go get github.com/spf13/cobra/cobra
go get github.com/spf13/viper
go get github.com/juju/errors
go get golang.org/x/tools/cmd/goimports
go get github.com/stretchr/testify
go get github.com/stretchr/testify/assert
go.uber.org/zap
go.uber.org/zap/zapcore
cp ~/.dotfiles/go/.golangci.yaml .golangci.yaml
cp ~/.dotfiles/go/Makefile Makefile
echo "export GOPRIVATE=\"github.hpe.com\"" >> ~/.bashrc

mkdir -p ./.idea
cp ~/.dotfiles/go/watcherTasks.xml ./.idea/
# binary will be $(go env GOPATH)/bin/golangci-lint
sudo curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sudo sh -s -- -b /usr/local/bin v1.36.0

golangci-lint --version
