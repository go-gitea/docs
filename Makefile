THEME := themes/gitea
PUBLIC := public
ARCHIVE := https://dl.gitea.io/theme/master.tar.gz

.PHONY: all
all: build

.PHONY: clean
clean:
	rm -rf $(PUBLIC) $(THEME)

.PHONY: server
server: $(THEME)
	hugo server

.PHONY: build
build: $(THEME)
	hugo --cleanDestinationDir

.PHONY: update
update: $(THEME)

$(THEME):
	mkdir -p $@
	curl -s $(ARCHIVE) | tar xz -C $@
