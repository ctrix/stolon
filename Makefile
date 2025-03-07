PROJDIR=$(dir $(realpath $(firstword $(MAKEFILE_LIST))))

# change to project dir so we can express all as relative paths
$(shell cd $(PROJDIR))

REPO_PATH=github.com/sorintlab/stolon

LD_FLAGS="-s -w"

$(shell mkdir -p bin )

.PHONY: all
all: build

.PHONY: build
build: sentinel keeper proxy stolonctl

.PHONY: test
test: build
	./test

.PHONY: sentinel keeper proxy stolonctl docker

keeper:
	GO111MODULE=on go build -ldflags $(LD_FLAGS) -o $(PROJDIR)/bin/stolon-keeper $(REPO_PATH)/cmd/keeper

sentinel:
	CGO_ENABLED=0 GO111MODULE=on go build -ldflags $(LD_FLAGS) -o $(PROJDIR)/bin/stolon-sentinel $(REPO_PATH)/cmd/sentinel

proxy:
	CGO_ENABLED=0 GO111MODULE=on go build -ldflags $(LD_FLAGS) -o $(PROJDIR)/bin/stolon-proxy $(REPO_PATH)/cmd/proxy

stolonctl:
	CGO_ENABLED=0 GO111MODULE=on go build -ldflags $(LD_FLAGS) -o $(PROJDIR)/bin/stolonctl $(REPO_PATH)/cmd/stolonctl

.PHONY: docker
docker:
	if [ -z $${PGVERSION} ]; then echo 'PGVERSION is undefined'; exit 1; fi; \
	if [ -z $${TAG} ]; then echo 'TAG is undefined'; exit 1; fi; \
	docker build --build-arg PGVERSION=${PGVERSION} -t ${TAG} -f .github/Dockerfile .
