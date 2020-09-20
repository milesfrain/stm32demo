#!/bin/sh -l

set -ex

/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -importAll . -cleanBuild all -no-indexer 2>&1

rtval=$?

echo exit status: $rtval

exit $rtval
