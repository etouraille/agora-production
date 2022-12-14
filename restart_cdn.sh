#!/bin/bash
docker exec -d cdn-agora /bin/bash -c "pm2 kill;pm2 start -f app.js"
