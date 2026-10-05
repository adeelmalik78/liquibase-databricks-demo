liquibase --defaults-file=liquibase.properties update 
# liquibase --defaults-file=liquibase.properties.qa update 
# liquibase --defaults-file=liquibase.properties.prod update 


liquibase --defaults-file=liquibase.properties rollbackOneUpdate --force 
# liquibase --defaults-file=liquibase.properties.qa  rollbackOneUpdate --force 
# liquibase --defaults-file=liquibase.properties.prod rollbackOneUpdate --force 