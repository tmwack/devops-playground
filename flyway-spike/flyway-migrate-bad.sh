#!/usr/bin/env bash

flyway -configFile=./flyway.conf -locations=filesystem:./bad-sql clean

flyway -configFile=./flyway.conf -locations=filesystem:./bad-sql migrate

flyway -configFile=./flyway.conf -locations=filesystem:./bad-sql info