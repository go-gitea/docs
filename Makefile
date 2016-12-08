THEME := themes/gitea

.PHONY: all
all: build

.PHONY: server
server: $(THEME)
	hugo server

.PHONY: build
build: $(THEME)
	hugo --cleanDestinationDir

.PHONY: update
update: $(THEME)

.PHONY: $(THEME)
$(THEME):
	mkdir -p $@
	curl https://dl.gitea.io/theme/master.tar.gz | tar xz -C $@
