#!/bin/sh

HOST=artifactory.lab.ltsai.com

TOP_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/..

cd $TOP_DIR/repo_artifacts

find . ! -path . | while read line; do
  FILE=$line
  curl -k -uadmin:password -T $FILE "https://artifactory.lab.ltsai.com/artifactory/web/store/1.0.0/$FILE"
done

