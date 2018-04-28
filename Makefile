
DATE	:= $$(date +%Y%m%d)

build:
	docker build -t molecule:$(DATE) src
