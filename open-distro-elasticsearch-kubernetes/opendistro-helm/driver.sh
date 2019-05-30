#!/bin/bash

nodes_dir='./nodes'
nodes=( ${nodes_dir}/*.yml )

for node in "${nodes[@]}";
  do
    helm install --dry-run --debug --values ${node} .
  done
