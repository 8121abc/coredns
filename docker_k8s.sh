#!/bin/bash
images=(kube-proxy kube-scheduler kube-controller-manager kube-apiserver-amd64 etcd pause coredns)

for image in ${images[@]} ; do

  docker pull shayu/$image

  docker tag shayu/$image k8s.gcr.io/$image

  docker rmi shayu/$image

done

