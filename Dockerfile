FROM goodrainapps/maven:jdk8-alpine

WORKDIR  /app

ADD ./ruoyi-admin.jar /app/ruoyi-admin.jar 
ADD ./run.sh   /app/run.sh
ADD ./agent   /app/agent
RUN wget https://buildpack.oss-cn-shanghai.aliyuncs.com/jdk/jdk1.8.0.tgz && \
tar xvf jdk1.8.0.tgz && \
chmod +x /app/run.sh

EXPOSE 5000
ENTRYPOINT ["/app/run.sh"]