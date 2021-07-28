FROM goodrainapps/maven:jdk8-alpine

WORKDIR  /app

ADD ./ruoyi-admin.jar /app/ruoyi-admin.jar 
ADD ./run.sh   /app/run.sh
ADD ./agent   /app/agent
RUN chmod +x /app/run.sh

EXPOSE 5000
ENTRYPOINT ["/app/run.sh"]