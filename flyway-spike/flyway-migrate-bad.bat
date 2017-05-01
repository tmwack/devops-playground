call flyway -configFile=./flyway.conf -locations=filesystem:./bad-sql clean

call flyway -configFile=./flyway.conf -locations=filesystem:./bad-sql migrate

call flyway -configFile=./flyway.conf -locations=filesystem:./bad-sql info