.PHONY: all
all: aws azure gcp

.PHONY: aws
aws:
	rm -rf tmp/*
	rm -rf public/$@
	cd tmp && unzip ../src/$@.zip
	mkdir -p public/$@
	mv tmp/Resource-Icons*/*/*.svg public/$@
	mv tmp/Architecture-Service-Icons*/*/64/*.svg public/$@
	hack/rename $@

.PHONY: gcp
gcp:
	rm -rf tmp/*
	rm -rf public/$@
	cd tmp && unzip ../src/$@.zip
	mkdir -p public/$@
	mv tmp/*/*.svg public/$@
	hack/rename $@

.PHONY: azure
azure:
	rm -rf tmp/*
	rm -rf public/$@
	cd tmp && unzip ../src/$@.zip
	mkdir -p public/$@
	mv tmp/Azure_Public_Service_Icons/Icons/*/*.svg public/$@
	hack/rename $@
