
SVC_REPO=gcr.io/trust-networks/probe-svc
SVC_VERSION=1.0

CA_REPO=gcr.io/trust-networks/probe-ca
CA_VERSION=0.03

container:
	docker build -t ${SVC_REPO}:${SVC_VERSION} -f Dockerfile.svc .
	docker build -t ${CA_REPO}:${CA_VERSION} -f Dockerfile.ca .

push:
	gcloud docker -- push ${SVC_REPO}:${SVC_VERSION}
	gcloud docker -- push ${CA_REPO}:${CA_VERSION}


