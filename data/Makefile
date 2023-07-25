default:
	@printf '%s\n' '>> Usage:' '      make import' '      make export' '>> Refer to README.md for details.'

import:
	go run preprocess-jmdict.go JMdict*.xml

EXPORT_FILENAME ?= entrypack-v1-$(shell cat entrypack.json | grep -o 'Creation Date: [0-9-]*' | awk '{print$$3}').json.gz

export:
	gzip -9 < entrypack.json > $(EXPORT_FILENAME)

.PHONY: default import export
