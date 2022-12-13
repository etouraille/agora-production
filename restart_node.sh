#!/bin/bash
ps -aux | grep 'pm2' | awk '{ print $1}' | xargs kill -9
docker exec -i api-agora /bin/bash -c "pm2 start ecosystem.config.js"
docker exec -i socket-agora /bin/bash -c "pm2 start ecosystem.config-socket.js"
