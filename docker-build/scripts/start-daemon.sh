#!/bin/bash

mkdir -p $TRINO_HOME/logs

java -Xmx128M -XX:MaxDirectMemorySize=32M -jar $TRINO_HOME/mate/trino-mate.jar >>$TRINO_HOME/logs/trino_mate.stdout.log 2>>$TRINO_HOME/logs/trino_mate.stderr.log
