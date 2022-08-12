#!/bin/bash

mkdir $TRINO_HOME/etc
mkdir $TRINO_HOME/etc/catalog
mkdir -p $TRINO_HOME/logs
cp $TRINO_HOME/mate/conf/node/standalone/config.properties $TRINO_HOME/etc/config.properties
cp $TRINO_HOME/mate/conf/node/standalone/jvm.config $TRINO_HOME/etc/jvm.config
cp $TRINO_HOME/mate/conf/node/standalone/node.properties $TRINO_HOME/etc/node.properties
cp $TRINO_HOME/mate/conf/catalog/jmx.properties $TRINO_HOME/etc/catalog/jmx.properties
cp $TRINO_HOME/mate/conf/catalog/tpch.properties $TRINO_HOME/etc/catalog/jmx.properties
nohup $TRINO_HOME/bin/launcher run >>$TRINO_HOME/logs/trino.stdout.log 2>>$TRINO_HOME/logs/trino.stderr.log

