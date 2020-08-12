clean:
	rm -rf *.egg-info
	rm -rf dist
	rm -rf python_cli_tool_scaffold/__pycache__
	rm -rf tests/__pycache__
	rm -rf .pytest_cache
	rm -rf .coverage
	rm -rf coverage.xml

setup:
	poetry install

inspect:
	flake8 python_cli_tool_scaffold tests

test:
	poetry run pytest -vv --cov-report=xml --cov=python_cli_tool_scaffold tests/

build:
	poetry build

run:
	poetry run python_cli_tool_scaffold

pypiconfig:
	poetry config pypi-token.pypi $(token)

deploy:
	poetry build
	poetry publish
