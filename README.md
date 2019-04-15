## PetStore WebSphere Version 

This branch (master) holds the original source of the application that was deployed in WebSphere. The project was then refactored to work on Tomcat on [AppZ](http://ecloudcontrol.com). See appz branch for that version.

### Application

* ```cd application```
* ```mvn clean```
* ```mvn package -Pwebsphere```

### Mysql

* ```cd docker```
* ```docker-compose up -d mysql```

### IBM Websphere

* ```cd webspere```
* ```vagrant plugin install vagrant-vbguest```
* ```vagrant up```
