#! /bin/bash

set -e

source bosh-cpi-src/.envrc

# Spawn the test environment on nimbus
pushd vcpi-nimbus
  echo "$DBC_SSH_KEY" > ./dbc_ssh_key
  chmod 400 dbc_ssh_key
  ./launch -s 'ssh -i dbc_ssh_key -o StrictHostKeyChecking=no'
  source environment.sh
popd

# Sleep for 15 minutes to allow the system to start collecting statistics.
# PerformanceManager provides wrong statistics if this is not there and most
# tests will fail.
#
# DO NOT REMOVE OR CHANGE WITHOUT THOROUGH INVESTIGATION.
#
# According to the vSphere documentation for PerformanceManager:
#   VirtualCenter Server 2.5 (and subsequent vCenter Server) systems initially
#   collect statistics data 10 minutes after system startup
# Sleep for 16 minutes (960 seconds) to allow for statistics collection to
# commence and for one round (5 minutes) of statistics to be collected. Allow
# one more minutes as a buffer.
sleep 960

stemcell_dir="$( cd stemcell && pwd )"

export BOSH_VSPHERE_STEMCELL=${stemcell_dir}/stemcell.tgz
export HTTP_PROXY="http://$BOSH_VSPHERE_JUMPER_HOST:3128"
export HTTPS_PROXY="http://$BOSH_VSPHERE_JUMPER_HOST:3128"

: ${RSPEC_FLAGS:=""}
: ${BOSH_VSPHERE_STEMCELL:=""}

# allow user to pass paths to spec files relative to src/vsphere_cpi
# e.g. ./run-lifecycle.sh spec/integration/core_spec.rb
if [ "$#" -ne 0 ]; then
  RSPEC_ARGS="$@"
fi

install_iso9660wrap() {
  pushd bosh-cpi-src
    pushd src/iso9660wrap
      go build ./...
      export PATH="$PATH:$PWD"
    popd
  popd
}

install_iso9660wrap

pushd bosh-cpi-src/src/vsphere_cpi
  bundle install
  bundle exec rspec ${RSPEC_FLAGS} --require ./spec/support/verbose_formatter.rb --format VerboseFormatter spec/integration
popd
