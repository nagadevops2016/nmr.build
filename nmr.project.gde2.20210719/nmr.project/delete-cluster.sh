MACHINE=`uname`

KIND_CLUSTER_NAME="${1:-kind}"

if [ "$MACHINE" = "Darwin" ]; then
  ./kind-darwin delete cluster --name nmr-test-projects-${KIND_CLUSTER_NAME} --kubeconfig nmr-local-${KIND_CLUSTER_NAME}
else
  ./kind-linux-amd64  delete cluster --name nmr-test-projects-${KIND_CLUSTER_NAME} --kubeconfig nmr-local-${KIND_CLUSTER_NAME}
fi
