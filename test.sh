#!/bin/sh

set -e

# Build project
pip install --upgrade pip
pip install copier
copier copy -r HEAD -l --overwrite . example
cd example

# Install dependencies
python3 -m venv venv
. venv/bin/activate
pip install --upgrade pip
pip install -e .[test]

# Run tests
black .
ruff . --no-fix
mypy .
pytest
