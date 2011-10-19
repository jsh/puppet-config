check:
	puppet --parseonly manifests/site.pp

do:
	puppet apply manifests/site.pp
