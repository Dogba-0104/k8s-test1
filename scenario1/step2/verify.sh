#!/bin/bash

 $(k get pod nginx -o jsonpath='{.status.phase}') | grep 'Running'
