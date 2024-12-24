
helm-deploy:
	helm upgrade powerdns ./deploy/helm/k8str-powerdns-chart \
	   --install --namespace powerdns --create-namespace

helm-package:
	make -C deploy/helm package

include helm.mk