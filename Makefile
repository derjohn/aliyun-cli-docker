CONFDIR:=$(HOME)/.aliyun
ALIYUNVERSION=3.0.51

aliyun.tgz:
	curl "https://aliyuncli.alicdn.com/aliyun-cli-linux-$(ALIYUNVERSION)-amd64.tgz" -o ./aliyun.tgz

docker: aliyun.tgz
	docker build . -t aliyun

configure:
	mkdir -p $(CONFDIR)
	docker run -v $(CONFDIR):/root/.aliyun aliyun configure

run:
	docker run -it -v $(CONFDIR):/root/.aliyun aliyun

shell:
	docker run -it -v $(CONFDIR):/root/.aliyun --entrypoint /bin/sh aliyun

alias:
	@echo "Add this to your .bashrc"
	@echo "alias aliyun=\"docker run -it -v $(CONFDIR):/root/.aliyun aliyun\""

