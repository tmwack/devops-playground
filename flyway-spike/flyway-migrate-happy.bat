call flyway -configFile=./flyway.conf -locations=filesystem:./happy-sql clean

call flyway -configFile=./flyway.conf -locations=filesystem:./happy-sql migrate

call flyway -configFile=./flyway.conf -locations=filesystem:./happy-sql info