.PHONY: build flash format

default: build

build:
	idf.py build

flash:
	idf.py flash

format:
	@find . \( -name "*.c" -o -name "*.h" \) -not -path "./build/*" | xargs clang-format -i
