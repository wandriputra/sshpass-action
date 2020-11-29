#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

HOST=$1
USERNAME=$2
PORT=$4
RUN=$5
export SSHPASS=$3

CMD="${RUN/$'\n'/' && '}"
sshpass -e ssh -o StrictHostKeyChecking=no -p $PORT $USERNAME@$HOST: "$CMD"

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"
