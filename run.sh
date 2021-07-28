#!/bin/bash

sleep ${PAUSE:-0}

exec java  $JAVA_OPTS -javaagent:/app/agent/skywalking-agent.jar -Dskywalking.agent.service_name=ruoyi -Dskywalking.collector.backend_service=106.15.152.33:27110  -Dfile.encoding=UTF-8   -jar  /app/ruoyi-admin.jar 