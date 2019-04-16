
## Migration process

1. In the existing code sources find ```web/WEB-INF``` directory.
2. Create file named ```resources.xml``` inside it.
3. Define datasource configuration like it is done below
    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <!--
        Licensed to the Apache Software Foundation (ASF) under one or more
        contributor license agreements.  See the NOTICE file distributed with
        this work for additional information regarding copyright ownership.
        The ASF licenses this file to You under the Apache License, Version 2.0
        (the "License"); you may not use this file except in compliance with
        the License.  You may obtain a copy of the License at
           http://www.apache.org/licenses/LICENSE-2.0
        Unless required by applicable law or agreed to in writing, software
        distributed under the License is distributed on an "AS IS" BASIS,
        WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
        See the License for the specific language governing permissions and
        limitations under the License.
    -->
    <resources>
      <Resource id="DefaultDataSource" type="javax.sql.DataSource">
        JdbcDriver com.mysql.jdbc.Driver
        JdbcUrl ${mysql.jdbc.url}
        UserName ${mysql.user}
        Password ${mysql.password}
      </Resource>
    </resources>
    ``` 

4. Modify pom.xml to support simulations build for tomcat and other servers both
    Add properties
    ```xml
      <properties>
          <mysql.jdbc.url>jdbc:mysql://mysql-5-7:3306/petstore</mysql.jdbc.url>
          <mysql.user>petstore</mysql.user>
          <mysql.password>petstore</mysql.password>
      </properties>
    ```
    
    Add profiles
    ```xml
    <profiles>
        <profile>
          <id>tomcat</id>
          <properties>
            <mysql.jdbc.url>jdbc:mysql://mysql-tomcat:3306/default</mysql.jdbc.url>
            <mysql.user>default</mysql.user>
            <mysql.password>password</mysql.password>
          </properties>
          <build>
            <finalName>applicationPetstore-tomcat</finalName>
          </build>
        </profile>
        <profile>
          <id>websphere</id>
          <properties>
            <jta.datasource.name>DefaultDataSource</jta.datasource.name>
            <mysql.jdbc.url>jdbc:mysql://localhost:3307/default</mysql.jdbc.url>
            <mysql.user>default</mysql.user>
            <mysql.password>password</mysql.password>
          </properties>
          <build>
            <finalName>applicationPetstore-websphere</finalName>
          </build>
        </profile>
        <profile>
          <id>appz-k8s</id>
          <properties>
            <mysql.jdbc.url>jdbc:mysql://mysql-5-7:3306/petstore</mysql.jdbc.url>
            <mysql.user>petstore</mysql.user>
            <mysql.password>petstore</mysql.password>
          </properties>
          <build>
            <finalName>applicationPetstore-appz-k8s</finalName>
          </build>
        </profile>
      </profiles>
    ```
5. Build your war for specific server
    * ```mvn clean```
    * ```mvn package``` — default to tomcat (custom)
    * ```mvn package -Ptomcat``` — default to tomcat (default)
    * ```mvn package -Pwebsphere``` — default to websphere
6. If you use Tomcat, pack war inside docker image or mount it like a volume. 
   Deploy it somewhere using Docker or Kubernetes. 
   
   If you use WebSphere, deploy war manually on the server node.

7. Check [http://example.com/applicationPetstore](http://example.com/applicationPetstore)


## Usage

### 1) Application

* ```cd application```
* ```mvn clean```
* ```mvn package -Ptomcat```
* ```mvn package -Pwebsphere```

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