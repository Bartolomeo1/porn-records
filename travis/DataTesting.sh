#!/usr/bin/env bash

version="$(date +%Y.%m).${BUILD_NUMBER}"

git_dir="$(git rev-parse --show-toplevel)"

testFile="${git_dir}/.pyfunceble/domains.txt"

#testFile="https://raw.githubusercontent.com/${TRAVIS_REPO_SLUG}/.pyfunceble/domains.txt"
#testFile="https://raw.githubusercontent.com/PyFunceble/ci_test/master/test.list"

RunPyFunceble () {

    hash pyfunceble

    printf "\n\tYou are running with RunFunceble\n\n"

    pyfunceble --ci \
      -c \
      --preload \
      -h \
      -ex \
      --hierarchical \
      --share-logs \
      --http \
      --dots \
      --autosave-minutes 5 \
      -f "${testFile}"

}
RunPyFunceble

exit ${?}

# Copyright: https://www.mypdns.org/
# Content: https://www.mypdns.org/p/Spirillen/
# Source: https://www.mypdns.org/source/PornDomains/
# License: https://www.mypdns.org/w/license
# License Comment: GNU AGPLv3, MODIFIED FOR NON COMMERCIAL USE
#
# License in short:
# You are free to copy and distribute this file for non-commercial uses,
# as long the original URL and attribution is included.
#
# Please forward any additions, corrections or comments by logging an
# issue at https://www.mypdns.org/maniphest/
