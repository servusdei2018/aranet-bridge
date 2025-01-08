.PHONY: build flash format monitor

default: build

build:
	idf.py build

flash:
	idf.py flash

format:
	@find . \( -name "*.c" -o -name "*.h" \) -not -path "./build/*" | xargs clang-format -i

monitor:
	idf.py monitor