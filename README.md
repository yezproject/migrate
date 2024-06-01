# Migration Liquibase Tool

## Update db
```bash
mvn liquibase:update -Dusername=admin -Dpassword=admin
```

## Generate changelog diff
```bash
mvn liquibase:generateChangeLog -Dusername=admin -Dpassword=admin
```
