# Flyway Migrations

Flyway automates database migration, using the current state of the target database to calculate the changeset then applying the necessary migrations.

## The Migrations Directory

Migration scripts are defined in SQL and organized within a single folder. The Migration Directory can be configured per-command but it will be `<install-dir>/sql` by default.

There are two categories of migration supported by Flyway:

* [Versioned Migrations](https://flywaydb.org/documentation/migration/versioned), which produce new versions and are applied exactly once (e.g. ALTER TABLE scripts).
* [Repeatable Migrations](https://flywaydb.org/documentation/migration/repeatable), which can be applied without affecting the database version (e.g. CREATE VIEW scripts).

## The schema_version table

Each migration is tracked with an entry in the ***schema_version table***. When migrating, flyway uses the *schema_version table* to determine which migration scripts need to be applied.

Conceptually, the *schema_version table* represents the current state of the database. The table is entirely managed by Flyway alongside the existing database.

## Applying a migration

Flyway migrations are enacting using the *migrate* command: `flyway migrate`.

There are four major parameters for the migrate command:

1. path to Migration Directory
1. database JDBC URL
1. username
1. password

When executed, `flyway migrate` will diff the database against the Migration Directory, then run any migration scripts necessary.

### Flyway Migrate parameters

Parameters can be specified as options on the command *and/or* with a configuration file.

Command option-specified parameters override configuration file-specified parameters.

#### Command Options

`flyway -locations=filesystem:<path-to-Migration-Directory> -url=<database-JDBC-URL> -user=<username> -password=<password> migrate`

#### Configuration File

`flyway -configFile=<path-to-config-file> migrate`

```text
# Settings are simple key-value pairs

flyway.url=<path-to-Migration-Directory>
flyway.user=<username>
flyway.password=<password>
flyway.locations=filesystem:<path-to-Migration-Directory>
```