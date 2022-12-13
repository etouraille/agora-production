#!/bin/bash
docker exec -i cdn-agora /bin/bash -c "pm2 kill;pm2 start -f app.js"
