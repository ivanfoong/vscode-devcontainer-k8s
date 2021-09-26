# Kubernetes in DevContainer Example
Based on <https://github.com/jeremysf/vscode-kind>

## Requirements
1. VSCode <https://code.visualstudio.com/>
1. Docker Desktop <https://www.docker.com/products/docker-desktop>


## Setup
Install VSCode Remote container extension<https://code.visualstudio.com/docs/remote/containers#_getting-started>

Open this folder in devcontainer <https://code.visualstudio.com/docs/remote/containers#_quick-start-open-an-existing-folder-in-a-container>

Once your devcontainer is running, in the terminal in Visual Studio Code, run the script:

```
$ ./create_k8s_cluster.sh
```

Let's populate it with some services. Run the script:

```
$ ./helm_upgrade.sh
```

A quick `kubectl get services` will show the deployed services:

```
$ kubectl get services
NAME                        TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)                                 AGE
example-memcached           ClusterIP   10.96.146.238   <none>        11211/TCP                               44s
example-mysql               ClusterIP   10.96.180.46    <none>        3306/TCP                                44s
example-mysql-slave         ClusterIP   10.96.104.245   <none>        3306/TCP                                44s
example-nginx               NodePort    10.96.193.38    <none>        30000:30000/TCP,443:32242/TCP           44s
example-rabbitmq            ClusterIP   10.96.249.67    <none>        5672/TCP,4369/TCP,25672/TCP,15672/TCP   44s
example-rabbitmq-headless   ClusterIP   None            <none>        4369/TCP,5672/TCP,25672/TCP,15672/TCP   44s
example-redis-headless      ClusterIP   None            <none>        6379/TCP                                44s
example-redis-master        ClusterIP   10.96.106.94    <none>        6379/TCP                                44s
example-redis-slave         ClusterIP   10.96.181.250   <none>        6379/TCP                                44s
kubernetes                  ClusterIP   10.96.0.1       <none>        443/TCP                                 2m34s
```