FROM tomee:8-jre-7.1.0-plus

COPY conf/* /usr/local/tomee/conf/

ENV JPDA_ADDRESS="5000"
EXPOSE 5000

CMD ["catalina.sh", "jpda", "run"]