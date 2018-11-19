#!/usr/bin/env bash
# starts the pods defined in the current directory as long as they are not
# listed in the "do_not_auto_apply.list"

for F in $(ls -1 ./*.yml | grep -v -f ./do_not_auto_apply.list); do
  kubectl apply -f ${F}
done
