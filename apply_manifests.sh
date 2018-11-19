#!/usr/bin/env bash

for F in $(ls -1 ./*.yml); do
  kubectl apply -f ${F}
done
