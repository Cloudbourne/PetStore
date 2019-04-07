### 1) Application

* ```cd application```
* ```mvn clean package -Dmaven.test.skip=true```

### 2) Mysql

* ```cd docker```
* ```docker-compose up -d mysql```

### 3.a) IBM Websphere

* ```cd webspere```
* ```vagrant plugin install vagrant-vbguest```
* ```vagrant up```

### 3.b) Tomcat Docker

* ```cd docker```
* ```docker-compose up -d tomcat```