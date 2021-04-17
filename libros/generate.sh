#!/bin/bash

set -e

BASEDIR=$(dirname $0)
cd "${BASEDIR}"

for i in *.yaml
do
    mustache ${i} book.mustache > ${i%.yaml}.html
done
