MAINTAINER=akhal3d
DOCKERFILES=$(shell find * -type f -name Dockerfile)
IMAGES=$(subst /,\:,$(subst /Dockerfile,,$(DOCKERFILES)))

.PHONY: all clean $(IMAGES)

all: $(IMAGES)

$(IMAGES): %:
	docker build --no-cache -t $(MAINTAINER)/$@ $(subst :,/,$@)