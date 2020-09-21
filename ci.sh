#!/bin/sh -l

#set -ex
set -x

/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data . -importAll . -build '.*/Debug' 2>&1

rtval=$?

echo exit status: $rtval

exit $rtval
