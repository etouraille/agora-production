#!/bin/bash
ps -aux | grep 'node serve.js' | awk '{ print $1}' | xargs kill -9
ps -aux | grep 'node socket.js' | awk '{ print $1}' | xargs kill -9
docker exec -i api-agora /bin/bash -c "pm2 kill;pm2 start ecosystem.config.js"
docker exec -i socket-agora /bin/bash -c "pm2 kill;pm2 start ecosystem.config-socket.js"
