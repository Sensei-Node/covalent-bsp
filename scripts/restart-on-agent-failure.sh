while true; do
  agent_status=$(docker inspect --format '{{.State.Restarting}}' bsp-agent);
  if [ "$agent_status" == "true" ]; then
    echo 'BSP-Agent is restarting, restarting redis...';
    docker restart redis;
    echo 'Sleeping 120s...';
    sleep 120;
  else
    echo 'BSP-Agent is good!';
  fi;
  echo 'Sleeping 60s...';
  sleep 60;
done