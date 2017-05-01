# Flyway Spike

Spiking [Flyway](https://flywaydb.org/), taking notes on what I find, what I like, etc.

## About Flyway

[Flyway](https://flywaydb.org/getstarted/how) is a database tool for managing versioning, migrations, and standard DB management tasks. Written in Java, Flyway provides JVM packages, node packages, and a command-line tool.

Flyway supports any database with a JDBC driver. It is pre-packaged with JDBC drivers for most popular RDMBS, e.g. Postgres, MySQL, SQL Server.

## Migration

Flyway automates database migration, using the current state of the target database to calculate the changeset then applying the necessary migrations.

### database version: the metadata table

Flyway tracks every migration with an entry in the metadata table. The version of the database is derived from the success/failure of migrations in the metadata table.

Conceptually, the metadata table holds the current state of the database. The table is entirely managed by Flyway alongside the existing database.

### applying a migration

When Flyway migrates a database to a version, the metadata table is consulted to calculate the necessary changeset. If the targeted database is behind a few migration versions, then Flyway enqueue those few migrations before the targeted version.

A flyway migration requires the following parameters:
1. database URL
2. username
3. password
4. migration directory
