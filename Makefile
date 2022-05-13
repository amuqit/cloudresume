.PHONY: build

build:
	sam build
	
deploy-infra-1:
	sam build
deploy-infra-2:
	aws-vault exec amuqit --no-session -- sam deploy

deploy-site:
	aws-vault exec amuqit --no-session -- aws s3 sync ./static_website s3://abdulmuqit-resume
