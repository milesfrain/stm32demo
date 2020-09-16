#!/bin/sh -l

set -ex

./format/check.sh
/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -build all -data .
# todo unit testing
