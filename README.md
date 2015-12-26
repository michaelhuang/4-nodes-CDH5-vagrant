## Introduction

快速搭建基于CDH5、CM5的4 nodes集群

* master node 1/4 RAM of host, 1/2 core of host
* 3 slaves node 1/8 RAM of host, 1/2 core of host
* 阿里云repo
* 关闭防火墙，启动ntp

## Usage

先准备环境

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)
* [Hostmanager plugin](https://github.com/smdahlen/vagrant-hostmanager)

准备CDH，CM本地repo

* [cm](http://archive.cloudera.com/cm5/repo-as-tarball/5.5.1/cm5.5.1-centos6.tar.gz)
* [cdh](http://archive.cloudera.com/cdh5/parcels/5.5.1/CDH-5.5.1-1.cdh5.5.1.p0.11-el6.parcel)
* [manifest](http://archive.cloudera.com/cdh5/parcels/5.5.1/manifest.json)

```bash
$ tar zxvf cm5.5.1-centos6.tar.gz
$ python -m SimpleHTTPServer 8900
```

```bash
$ git clone https://github.com/michaelhuang/4-nodes-CDH5-vagrant.git
```

```bash
$ cd 4-nodes-CDH5-vagrant
$ vagrant up
```

open [Cloudera Manager web console](http://vm-cluster-node1:7180)

**Done!** hava fun :-)

## Ref
* [this guide](http://dandydev.net/blog/installing-virtual-hadoop-cluster)
* [create local repo](http://www.cloudera.com/content/www/en-us/documentation/enterprise/latest/topics/cm_ig_create_local_parcel_repo.html)
