# Change the version of Node.js to use, see https://nodejs.org
# to see the supported ES6 features see: https://kangax.github.io/compat-table/es6/
# 4.1.1 supports some ES6 (about 50%) features: https://nodejs.org/en/docs/es6/
# 0.12.7 is the latest version without most ES6 (about 20%) features: https://nodejs.org/docs/latest-v0.12.x/api/
#
# set the version to use:
#NODE_VERSION=0.12.7
#NODE_VERSION=4.1.1
#NODE_VERSION=4.2.1
#NODE_VERSION=6.11.1
#NODE_VERSION=8.2.1
NODE_VERSION=8.4.0

n use ${NODE_VERSION} /usr/local/lib/node_modules/jasmine/bin/jasmine \
  JASMINE_CONFIG_PATH=./jasmine.json

# You have to cd to a specific folder because
#   ~/node_modules/cucumber/bin/cucumber.js
# contains the line
# require('../lib/cli/run.js').default();
# Go figure!

cd ~/node_modules/cucumber/bin

export NODE_PATH=/home/$CYBER_DOJO_AVATAR_NAME/node_modules

n use ${NODE_VERSION} \
  ./cucumber.js \
  --format-options '{"colorsEnabled":false}' \
  /tmp/sandboxes/$CYBER_DOJO_AVATAR_NAME/*.feature
