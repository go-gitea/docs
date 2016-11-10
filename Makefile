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
	cd $(THEME) && git fetch --all --prune && git rebase origin/master

$(THEME):
	git clone https://github.com/go-gitea/theme.git $@
