argo-app:
	@touch environments/prod/apps/${APP}.yaml
	@touch helm-values/${APP}/values.yaml

argo-app-op:
	@touch environments/prod/openstack/${APP}-op.yaml
	@touch helm-values/${APP}/values.yaml

default-values:
	@helm show values ${REPO}/${APP} --version ${VERSION} > tmp/values/${APP}.yaml