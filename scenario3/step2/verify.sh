#!/bin/bash
function failed() {
  # User did not succeed. Unceremoniously terminate to avoid cheating
  exit 255
}

function passed() {
  echo "PASSED"
  exit 0
}

PODSTAT="$(kubectl get pod  -l app=nginx -o jsonpath='{.status.phase}' || failed )"

if [[ "x$PODSTAT" == "xRunning" ]]; then
  passed
else
  failed
fi
