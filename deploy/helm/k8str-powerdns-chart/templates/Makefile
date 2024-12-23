db-setup-cm.yaml: ../../data/db-setup.sql db-setup-cm.yaml.in
	cat db-setup-cm.yaml.in >db-setup-cm.yaml && \
	sed -e 's/^/    /' ../../../../data/db-setup.sql >> db-setup-cm.yaml

helm-package:
	cd deploy/helm && helm package k8str-powerdns-chart

helm-install:
	cd deploy/helm && helm upgrade powerdns k8sstr-powerdns-chart -i -n powerdns --create-namespace --devel 

helm-render:
	helm template powerdns k8str-powerdns-chart -n powerdns --create-namespace --devel


run-pod:
	kubectl run pdns-standalone -it --rm --image=powerdns/pdns-auth-49:4.9.2 --command -- bash