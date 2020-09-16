#!/bin/sh -l

# Was hoping that this would be enough to reliably exit on failure
#set -ex

./format/check.sh
format_ret=$?

/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -build all -data . 2>&1

# version that definitely fails
#/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild 2>&1
build_ret=$?

# todo unit testing

echo format return $format_ret

echo build return $build_ret

status=$((format_ret || build_ret))
echo status $status

exit $status
