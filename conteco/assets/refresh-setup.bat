@echo off

echo "Starting controlplane.${CONTECO_STARTUP_MODE}"

# make it workspace calls with rm commands
#if [[ "$1" == "--reset" ]] ; then
#  cluster/start console cmd rm -rf *
#  deployment/start console cmd rm -rf *
#  external/start console cmd rm -rf *
#  infometis/start console cmd rm -rf *
#  interface/start console cmd rm -rf *
#  internal/start console cmd rm -rf *
#  package/start console cmd rm -rf *
#  module/start console cmd rm -rf *
#  solution/start console cmd rm -rf *
#  shift
#fi

echo "Refreshing setup: %*"
#realm="$1"
#registry="$2"
#if [[ "$realm" == "" ]] ; then realm="${CONTECO_REALM}"; fi;
#if [[ "$registry" == "" ]] ; then registry="${CONTECO_REGISTRY}"; fi;
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.base
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.cli
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.conteco
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.depleco
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.infometis
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.inteco
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.modeco
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.soleco
docker pull ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.swareco
docker run -v /var/run/docker.sock:/var/run/docker.sock -v %cd%:/conteco/pwd ${CONTECO_REGISTRY}${CONTECO_REALM}/conteco.controlplane.cli --base
