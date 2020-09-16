#!/bin/sh -l

# this was absorbed by the github action

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

set -ex

./format/check.sh
/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -build all -data .
# todo unit testing
