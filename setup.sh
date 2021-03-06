#!/usr/bin/env bash

#
# Create ./test.git
#
# A local test repository is created and primed for simple HTTP hosting using git=
#

set -o errexit
set -o nounset
set -o pipefail

main() {

  # Remove artifacts from prior run
  rm -rf ./test
  rm -rf ./test.git

  # Initialize repository
  mkdir test && cd test && git init

  # Create a README.md
  cat <<EOF > README.md
  This is an autogenerated test repository.
EOF
  git add README.md
  git commit -m "Initial Commit"

  # Clone a bare version of the new repository
  # removing the source
  cd .. && git clone --bare test

  # Prime for hosting via simple HTTP
  cd test.git/hooks
  git update-server-info
}

main "$@"

