# Migration Liquibase Tool

## Update db
Run this to sync your database using all script:
```bash
liquibase \
--url=jdbc:postgresql://localhost:5432/pet \
--username=admin \
--password=admin \
```

## Snapshot
This command make a snapshot of current database as json file:
```bash
liquibase \
--url=jdbc:postgresql://localhost:5432/pet \
--username=admin \
--password=admin \
--output-file=snapshot.json \
--snapshot-format=json \
snapshot
```

## Diff Changelog
After change local database to auto generate diff change we need run diff-changelog command to compare: snapshot vs current database.
This command could using to compare 2 database but also work with a snapshot.
```bash
liquibase \
--url=offline:postgresql?snapshot=snapshot.json \
--reference-url=jdbc:postgresql://localhost:5432/pet \
--reference-username=admin \
--reference-password=admin \
--changelog-file=diff-changelog.sql \
diff-changelog
```
