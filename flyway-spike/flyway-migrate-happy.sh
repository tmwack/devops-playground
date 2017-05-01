#!/usr/bin/env bash

flyway -configFile=./flyway.conf -locations=filesystem:./happy-sql clean

flyway -configFile=./flyway.conf -locations=filesystem:./happy-sql migrate

flyway -configFile=./flyway.conf -locations=filesystem:./bad-sql info