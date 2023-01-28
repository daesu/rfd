.PHONY: all
all:

.PHONY: new lint
new:
	./tools/rfd

lint:
	./tools/rfdlint
	@echo "linter okay"