#!/bin/bash
function failed() {
  # User did not succeed. Unceremoniously terminate to avoid cheating
  exit 255
}

function passed() {
  echo "PASSED"
  exit 0
}
LPOD=$(kubectl get po -l test=liveness -o custom-columns=POD:metadata.name --no-headers)
PODSTAT="$(kubectl get pod $LPOD -o jsonpath='{.status.containerStatuses[0].ready}' || failed )"

if [[ "x$PODSTAT" == "xtrue" ]]; then
  passed
else
  failed
fi
