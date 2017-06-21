FROM zookeeper
MAINTAINER FansinZhao 171388204@qq.com
ENV KAFKA_USER=kafka_2.12-0.10.2.1
RUN set -x \
	&& wget -O kafka.tgz "http://apache.fayea.com/kafka/0.10.2.1/$KAFKA_USER.tgz" \
	&& tar -zxvf kafka.tgz
RUN rm -rf kafka.tgz
COPY $KAFKA_USER /$KAFKA_USER/
COPY run.sh /run.sh
RUN chmod a+x /run.sh
ENV PATH=$PATH:/$KAFKA_USER/bin
ENTRYPOINT ["/run.sh"]
CMD [""]
