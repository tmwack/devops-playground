# Flyway Spike

Spiking [Flyway](https://flywaydb.org/), taking notes on what I find, what I like, etc.

## About Flyway

[Flyway](https://flywaydb.org/getstarted/how) is **a database tool for managing migrations, schema versioning**, and standard DB management tasks.

Supports any database with a JDBC driver. It is pre-packaged with JDBC drivers for most popular RDMBS, e.g. Postgres, MySQL, SQL Server.

Distributed as a command-line tool, a Java package, and as a Maven/Gradle/Ant/SBT plugin.

**This spike will focus on the command-line distribution** -- preferring an agnostic tool, decoupling software deployment from database deployment with respect to programming language.

## Contents

Describes the artifacts within this flyway-spike/ folder.

### MIGRATION.md

Notes about migration with flyway.

### flyway-migrate-happy.sh + /happy-sql

Demonstrates flyway migrations using a successful migration. Creates a table, then indexes an column on that table.

Required: postgresql (9.4+), flyway (4.2.0+), `flyway` command on the PATH.

### flyway-migrate-bad.sh + /bad-sql

Demonstrates failure path for a flyway migration. The last migration version, *V0.0.3*, will fail and leave a "pending" migration.

Required: postgresql (9.4+), flyway (4.2.0+), `flyway` command on the PATH.

### flyway.conf.example

An example configuration file. **Can be used for the demonstration scripts** with a bit of modification.

#### modifying for demonstration scripts

* Fill in `flyway.user=` with your database username.
* Fill in `flyway.password=` with your database password.
* Fill in `flyway.url=` with the JDBC URL for your database.
* Remove `.example` extension.

**Note**: `flyway.locations=` is not required because the demonstration scripts override this parameter with a command option.