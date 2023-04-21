#!/bin/sh
mvn -V -ntp -Ddocker.registry.username=janhoy \
  -Ddocker.registry.password=ngn6YBcWTy -Ddocker.registry.account=janhoy/ \
  -Ddocker.image=janhoy/cantaloupe:5.0.5-custom2 -Ddocker.platforms=linux/amd64,linux/arm64 \
  -Dcantaloupe.commit.ref=3f856f4beec36c698a585cd870379b788d13585a -Dcantaloupe.version=dev \
  -Dcantaloupe.apply.patchfiles=true -Dorg.slf4j.simpleLogger.log.net.sourceforge.pmd=error \
  -DlogLevel=DEBUG -DtestLogLevel=DEBUG clean deploy