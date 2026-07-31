#!/bin/sh

set -e

rm -rf ~/.factorio/mods/more-barrels-fenhl
cp -R . ~/.factorio/mods/more-barrels-fenhl
factorio
