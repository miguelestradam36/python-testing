current_dir := $(realpath .)
.PHONY: poetry
poetry: ## Run poetry
	@poetry install
	@poetry run pytest $(current_dir)/tests/

.PHONY: poetry-info
poetry-info: ## Show env info
	@poetry show -v

.PHONY: poetry-venv
poetry-venv: ## Configure poetry virtual environment
	@poetry config virtualenvs.in-project true
	@poetry add $( cat requirements.txt )

sphinx-docs:
	@sphinx-apidoc -o docs tests/
	@cd docs && make html

.PHONY: all-poetry
all-poetry: poetry-venv poetry poetry-info