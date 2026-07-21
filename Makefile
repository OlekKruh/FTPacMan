.PHONY: install run debug clean lint help

help:
	@echo "Pac-Man Makefile targets:"
	@echo "  make install      - Install dependencies"
	@echo "  make run          - Run game"
	@echo "  make debug        - Run with pdb debugger"
	@echo "  make clean        - Remove cache and temp files"
	@echo "  make lint         - Run flake8 and mypy"
	@echo "  make lint-strict  - Run flake8 and mypy with strict flags"
	@echo "  make test         - Run pytest"

install:
	@echo "Installing dependencies..."
	uv venv
	uv pip install -r requirements.txt

run:
	@echo "Running Pac-Man..."
	@echo "TODO"

clean:
	@echo "Cleaning up..."
	rm -rf src/__pycache__
	rm -rf src/*/__pycache__
	rm -rf .mypy_cache

debug:
	@echo "Running Pac-Man in debug mode..."
	uv run python3 -m pdb src.main

lint:
	@echo "Running flake8..."
	uv run flake8 src/
	@echo "Running mypy..."
	uv run mypy src/ --warn-return-any --warn-unused-ignores --ignore-missing-imports --disallow-untyped-defs --check-untyped-defs
