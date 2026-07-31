#!/bin/sh

set -e

version=$(jq -r '.version' info.json)
rm -f more-barrels-fenhl_*.zip
git archive --prefix "more-barrels-fenhl_${version}/" -o "more-barrels-fenhl_${version}.zip" HEAD . ':!/assets'
