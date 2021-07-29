MACHINE=`uname`
KIND_CLUSTER_NAME=$1

if [ "$MACHINE" = "Darwin" ]; then
  ./kind-with-registry.sh ./kind-darwin $KIND_CLUSTER_NAME
else
  ./kind-with-registry.sh ./kind-linux-amd64 $KIND_CLUSTER_NAME
fi
