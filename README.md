# How to build
## 1. Build image ที่ลง Applications (apk add ...)
1. ใช้ ​Network (ไม่ใช่ ของ office) ที่ออก Internet ได้ 
2. Run command
```shell
$ docker-compose -f docker-compose.local-build.yml build
```
## 2. Build image with pre-install plugins & pre-configure 
1. ใช้ ​Network ของ office ที่สามารถ resolv domain lib.matador.ais.co.th ได้ 
2. Run command
```shell
$ docker-compose -f docker-compose.ais-build.yml build
$ docker-compose -f docker-compose.ais-build.yml push
```

# How to pre-configure Jenkins
ใช้ [Jenkins Configuration as Code (a.k.a. JCasC) Plugin](https://github.com/jenkinsci/configuration-as-code-plugin) ในการ configure โดยดูตัวอย่างได้จาก https://github.com/jenkinsci/configuration-as-code-plugin/tree/master/demos

Configurations ทั้งหมดจะอยู่ใน folder `casc_configs` และถูกเรียกใช้จาก Environment variable `CASC_JENKINS_CONFIG` ที่อยู่ใน `Dockerfile`


# How to get all installed plugins
Go to Manage Jenkins > Script Console and put the script below.
```groovy
Jenkins.instance.pluginManager.plugins.each{
  plugin -> 
    println ("${plugin.getShortName()}:${plugin.getVersion()}")
}
```
