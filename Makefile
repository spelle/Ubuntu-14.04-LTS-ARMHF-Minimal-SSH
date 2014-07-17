#!/bin/sh
LOGFILE=lb-build.log

all:
	set -e; sudo lb build 2>&1 | tee $(LOGFILE)

clean:
	sudo lb clean --purge ; sudo rm -rf {config,local,$(LOGFILE)}
