#!/bin/sh -l

# Was hoping that this would be enough to reliably exit on failure
#set -ex

# just echo commands
set -x

./format/check.sh
format_ret=$?

/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data . -importAll . -build all -no-indexer

build_ret=$?

# todo unit testing

echo format return $format_ret

echo build return $build_ret

status=$((format_ret || build_ret))
echo status $status

exit $status
