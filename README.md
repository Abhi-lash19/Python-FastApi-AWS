[![Python application test with Github Actions](https://github.com/Abhi-lash19/Python-FastApi-AWS/actions/workflows/devops.yml/badge.svg)](https://github.com/Abhi-lash19/Python-FastApi-AWS/actions/workflows/devops.yml)
![Python application test with AWS Actions](https://codebuild.ap-south-1.amazonaws.com/badges?uuid=eyJlbmNyeXB0ZWREYXRhIjoiNnlwMFNQbzVhOGxrNk5tcXdrWEFPL1dhaWZZQ1ZiVVFZMTNkK3dTd21MaFE4ZUh0dkVHaUNJSHBWNmNOK0dZWHBRZHJvM2RYV1B4Tm9XSGQ3emo0bGRNPSIsIml2UGFyYW1ldGVyU3BlYyI6Im1lUGhHSnZxUUEvQ2dCWTkiLCJtYXRlcmlhbFNldFNlcmlhbCI6Mn0%3D&branch=main)


# Python-FastApi-AWS
This is a repository of my new Project where i will be working with Python , FastApi , AWS, and other DevOps Tool


1. Create a Python Virtual Environment `python3 -m venv ~/.venv` or `virtualenv ~/.venv`
2. Create empty files: `Makefile`, `requirements.txt`, `main.py`, `Dockerfile`, `mylib/__init__.py`,`mylib/logic.py`
3. Populate `Makefile`
4. Setup Continuous Integration, i.e. check code for issues like lint errors

![Lint Build Successful](image.png)

5. Build cli using Python Fire library  `./cli-fire.py wiki --help` to test logic example `./cli-fire.py wiki --length 10`
