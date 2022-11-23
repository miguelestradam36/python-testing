import pytest
def test_build():
    """
    Python pytest function
    Params: No parameters/arguments
    Objective: Checks if the hardcoded values has been installed into the env.
    """
    packages=["yaml","tox","pytest"]
    for package in packages:
        assert __import__(package)