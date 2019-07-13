
git-tag = `git describe --tags`
docker-repo = alexsavio/transmission-openvpn-arm
docker-target = $(docker-repo):$(git-tag)

show-tag:
	@echo $(git-tag)

docker-push:
	docker build -f Dockerfile.armhf -t $(docker-target) .
	docker login -u alexsavio 
	docker push $(docker-target)
