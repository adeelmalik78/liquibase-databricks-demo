## Liquibase Sample Repo ##

This repository shows the use of Liquibase properties files and Liquibase changelog files in different directories.

This is the tree structure of this repo. Notice that `liquibase.properties` file is located in the [PropertyFiles](PropertyFiles) directory. The `changelog.xml` file is located in the [Changelogs](Changelogs) directory:

```
.
├── Changelogs
│   └── changelog.xml
├── PropertyFiles
│   └── liquibase.properties
├── README.md
├── liquibase.flowfile.yaml
└── main
    ├── 100_ddl
    ├── 200_dml
    └── show
```

Note that the [PropertyFiles/liquibase.properties](PropertyFiles/liquibase.properties) configures `changelogFile` as follows:
```
changelogFile=Changelogs/changelog.xml
```

From the current working directory ("`./`"), I could run Liquibase commands as follows:
```
liquibase \
    --defaults-file=PropertyFiles/liquibase.properties \
    status
```

Or alternatively, I could set an environment variable to specify defaults file location and then perform the required Liquibase operation:
```
export LIQUIBASE_DEFAULTS_FILE=PropertyFiles/liquibase.properties
liquibase status
```

Expanding on environment variables, I could also specify all properties as environment variables:
```
export LIQUIBASE_DEFAULTS_FILE=PropertyFiles/liquibase.properties
export LIQUIBASE_COMMAND_CHANGELOG_FILE=Changelogs/changelog.xml
export LIQUIBASE_COMMAND_URL=jdbc:oracle:thin:@cs-oracledb.liquibase.net:1521/PP_DEV
export LIQUIBASE_COMMAND_USERNAME=liquibase_user
export LIQUIBASE_COMMAND_PASSWORD=liquibase_user

liquibase status
```