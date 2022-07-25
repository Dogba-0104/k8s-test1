#!/bin/bash
function failed() {
  # User did not succeed. Unceremoniously terminate to avoid cheating
  exit 255
}

function passed() {
  echo "PASSED"
  exit 0
}
POD=$(kubectl get po -l app=nginx -o custom-columns=POD:metadata.name --no-headers)
PODSTAT="$(kubectl get pod $POD -o jsonpath='{.status.phase}' || failed )"

if [[ "x$PODSTAT" == "xRunning" ]]; then
  passed
else
  failed
fi
