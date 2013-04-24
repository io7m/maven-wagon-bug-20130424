#!/bin/sh

REPOSITORY_ID=temp-repos
REPOSITORY_URL=scpexe://example.com/tmp/repos

DEPLOY_EXTRA_FILES="test-javadoc.jar"
DEPLOY_EXTRA_CLASSIFIERS="javadoc"
DEPLOY_EXTRA_TYPES="jar"

mvn -X -e gpg:sign-and-deploy-file            \
  "-DpomFile=pom.xml"                         \
  "-Dfile=test.jar"                           \
  "-Dfiles=${DEPLOY_EXTRA_FILES}"             \
  "-Dclassifiers=${DEPLOY_EXTRA_CLASSIFIERS}" \
  "-Dtypes=${DEPLOY_EXTRA_TYPES}"             \
  "-Durl=${REPOSITORY_URL}"                   \
  "-DrepositoryId=${REPOSITORY_ID}"

