FROM tomee:8-jre-7.1.0-plus

COPY docker/tomcat/conf/* /usr/local/tomee/conf/
COPY application/target/*.war /usr/local/tomee/webapps/

ENV JPDA_ADDRESS="5000"
EXPOSE 5000

CMD ["catalina.sh", "jpda", "run"]