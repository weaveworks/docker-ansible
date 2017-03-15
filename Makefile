.DEFAULT_GOAL := .uptodate

.uptodate: prom-run
	docker build -t quay.io/weaveworks/docker-ansible:$(shell ./tools/image-tag) .

prom-run:
	GOOS=linux CGO_ENABLED=0 go build ./vendor/github.com/tomwilkie/prom-run

clean:
	rm -f .uptodate prom-run
