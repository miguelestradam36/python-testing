# Documentation

Documentation about the technologies used in the project.

## Github Workflows

Runs the suggested function with the help of Github Workflows.

```yaml
    steps:
      - uses: actions/checkout@v3
      - name: Setup Python
        uses: actions/setup-python@v4
      - name: Install tox and any other packages
        run: pip install -r requirements.txt
      - name: Run Pytest
        # Run tox using the version of Python in `PATH`
        run: pytest tests/
```

## Pytest

Test the following packages has been installed

```python
    packages=["yaml","tox","pytest"]
    for package in packages:
        assert __import__(package)
```

## Tox

For more information check the `tox.ini` file.

```bash
tox
```