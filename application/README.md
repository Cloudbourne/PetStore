# Application - Petstore Java EE 7

* *Technologies* : Java EE 7 (JPA 2.1, CDI 1.1, Bean Validation 1.1, EJB Lite 3.2, JSF 2.2, JAX-RS 2.0), Java SE 7 (because that's the minimum required by Java EE 7), Twitter Bootstrap (Bootstrap 3.x, JQuery 2.x, PrimeFaces 6.x)
* *Summary* : A Petstore-like application using Java EE 7

## Purpose of this application

Do you remember the good old Java [Petstore](http://java.sun.com/developer/releases/petstore/) ? It was a sample application created by Sun for its [Java BluePrints](http://www.oracle.com/technetwork/java/javaee/blueprints/index.html) program. The Java Petstore was designed to illustrate how J2EE (and then Java EE) could be used to develop an eCommerce web application. Yes, the point of the Petstore is to sell pets online. The Petstore had a huge momentum and we started to see plenty of Petstore-like applications flourish. The idea was to build an application with a certain technology. Let's face it, the J2EE version was far too complex using plenty of (today outdated) [design patterns](http://java.sun.com/blueprints/corej2eepatterns/). When I wrote my [Java EE 5 book](http://www.eyrolles.com/Informatique/Livre/java-ee5-9782212120387) back in 2006, I decided to write a Petstore-like application but much simpler. But again, it's out-dated today.

What you have here is another Petstore-like application but using [Java EE 7](http://jcp.org/en/jsr/detail?id=342) and all its goodies (CDI, EJB Lite, REST interface). It is based on the Petstore I developed for my [Java EE 5 book](http://www.eyrolles.com/Informatique/Livre/java-ee-5-9782212126587) (sorry, it's written in French). I've updated it based on my [Java EE 6 book](http://www.amazon.com/gp/product/143022889X/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=143022889X&linkCode=as2&tag=antgonblo-20), and now I'm updating it again so it uses some new features of Java EE 7 described on my [Java EE 7 book](http://www.amazon.com/gp/product/143024626X/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=143024626X&linkCode=as2&tag=antgonblo-20). The goals of this sample is to :

* use Java EE 7 and just Java EE 7 : no external framework or dependency (except web frameworks or logging APIs)
* make it simple : no complex business algorithm, the point is to bring Java EE 7 technologies together to create an eCommerce website

If you want to use a different web interface, external frameworks, add some sexy alternative JVM language... feel free to fork the code. But the goal of this EE 7 Petstore is to remain simple and to stick to Java EE 7.

## Compile and package

Being Maven centric, you can compile and package it without tests using `mvn clean compile -Dmaven.test.skip=true`, `mvn clean package -Dmaven.test.skip=true` or `mvn clean install -Dmaven.test.skip=true`. Once you have your war file, you can deploy it.

## Execute the sample

Once deployed go to the following URL and start buying some pets: [http://localhost:8080/applicationPetstore](http://localhost:8080/applicationPetstore).

The admin [REST interface](http://localhost:8080/applicationPetstore/swagger.json) allows you to create/update/remove items in the catalog, orders or customers. You can run the following [curl](http://curl.haxx.se/) commands :

* `curl -X GET http://localhost:8080/applicationPetstore/rest/categories`
* `curl -X GET http://localhost:8080/applicationPetstore/rest/products`
* `curl -X GET http://localhost:8080/applicationPetstore/rest/items`
* `curl -X GET http://localhost:8080/applicationPetstore/rest/countries`
* `curl -X GET http://localhost:8080/applicationPetstore/rest/customers`

You can also get a JSON representation as follow :

* `curl -X GET -H "accept: application/json" http://localhost:8080/applicationPetstore/rest/items`

Check the Swagger contract on : [http://localhost:8080/applicationPetstore/swagger.json]()

### Twitter Bootstrap

When, like me, you have no web designer skills at all and your web pages look ugly, you use [Twitter Bootstrap](http://twitter.github.com/bootstrap/) ;o)

## Icons

I use:
 
* [Font Awesome](http://fontawesome.io/)
* [Silk Icons](http://www.famfamfam.com/lab/icons/silk/) which are in Creative Commons
