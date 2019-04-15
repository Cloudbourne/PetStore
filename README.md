## Petstore Java EE 7 on WebSphere 9 

This branch (master) holds the original source of the application that was deployed in WebSphere. The project was then refactored to work on Tomcat on [AppZ](http://ecloudcontrol.com). See [appz branch](https://github.com/Cloudbourne/PetStore/tree/appz) for that version.

* *Author* : [Antonio Goncalves](http://www.antoniogoncalves.org)
* *Level* : Intermediate
* *Technologies* : Java EE 7 (JPA 2.1, CDI 1.1, Bean Validation 1.1, EJB Lite 3.2, JSF 2.2, JAX-RS 2.0), Java SE 7 (because that's the minimum required by Java EE 7), Twitter Bootstrap (Bootstrap 3.x, JQuery 2.x, PrimeFaces 6.x)
* *Application Servers* : WebSphere 9
* *Summary* : A Petstore-like application using Java EE 7 running on WebSphere

## Purpose of this application

Do you remember the good old Java [Petstore](http://java.sun.com/developer/releases/petstore/) ? It was a sample application created by Sun for its [Java BluePrints](http://www.oracle.com/technetwork/java/javaee/blueprints/index.html) program. The Java Petstore was designed to illustrate how J2EE (and then Java EE) could be used to develop an eCommerce web application. Yes, the point of the Petstore is to sell pets online. The Petstore had a huge momentum and we started to see plenty of Petstore-like applications flourish. The idea was to build an application with a certain technology. Let's face it, the J2EE version was far too complex using plenty of (today outdated) [design patterns](http://java.sun.com/blueprints/corej2eepatterns/). 

What you have here is another Petstore-like application but using [Java EE 7](http://jcp.org/en/jsr/detail?id=342) and all its goodies (CDI, EJB Lite, REST interface). It is based on the Petstore I developed for my [Java EE 5 book](http://www.eyrolles.com/Informatique/Livre/java-ee-5-9782212126587) (sorry, it's written in French). I've updated it based on my [Java EE 6 book](http://www.amazon.com/gp/product/143022889X/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=143022889X&linkCode=as2&tag=antgonblo-20), and now I'm updating it again so it uses some new features of Java EE 7 described on my [Java EE 7 book](http://www.amazon.com/gp/product/143024626X/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=143024626X&linkCode=as2&tag=antgonblo-20). The goals of this sample is to :

* use Java EE 7 and just Java EE 7 : no external framework or dependency (except web frameworks or logging APIs)
* make it simple : no complex business algorithm, the point is to bring Java EE 7 technologies together to create an eCommerce website

If you want to use a different web interface, external frameworks, add some sexy alternative JVM language... feel free to fork the code. But the goal of this EE 7 Petstore is to remain simple and to stick to Java EE 7.

The only external framework used are [Arquillian](http://arquillian.org/), [Twitter Bootstrap](http://twitter.github.io/bootstrap/) and [PrimeFaces](http://www.primefaces.org/). Arquillian is used for integration testing. Using Maven profile, you can test services, injection, persistence... against different application servers. Twitter Bootstrap and PrimeFaces bring a bit of beauty to the web interface.

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
