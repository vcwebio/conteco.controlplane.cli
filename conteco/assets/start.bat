@echo off

echo "Starting controlplane.${CONTECO_STARTUP_MODE}"
docker run -it -v /etc:/hostfs/etc:ro -v /var/run/docker.sock:/var/run/docker.sock -v controlplane_repos_${CONTECO_REPOSITORY_CATEGORY}:/conteco/pwd ${CONTECO_REGISTRY}${CONTECO_REALM}/${CONTECO_ECOSYSTEM}.controlplane.${CONTECO_STARTUP_MODE} --interactive start-cli windows ${CONTECO_REPOSITORY_CATEGORY} %*
