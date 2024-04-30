install:
	#install commands
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
post-install:
	python -m textblob.download_corpora

format:
	#format code
	black *.py mylib/*.py
lint:
	#flake8 or #pylint
	pylint --disable=R,C *.py mylib/*.py
test:
	#test
	python -m pytest -vv --cov=mylib --cov=main test_*.py
build:
	#build container
	docker build -t deploy-fastapi .
run:
	#run docker
	docker run -p 127.0.0.1:8080:8080 30c8742a6c9c
deploy:
	#deploy
	aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 950776050005.dkr.ecr.ap-south-1.amazonaws.com
	docker build -t fastapi-python-wiki .
	docker tag fastapi-python-wiki:latest 950776050005.dkr.ecr.ap-south-1.amazonaws.com/fastapi-python-wiki:latest
	docker push 950776050005.dkr.ecr.ap-south-1.amazonaws.com/fastapi-python-wiki:latest

all: install post-install lint test deploy