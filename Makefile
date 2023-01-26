.PHONY: all
all:

.PHONY: check
check:
	./tools/rfdlint
	@echo "check ok"

new:
	./tools/rfd