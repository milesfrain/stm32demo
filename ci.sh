#!/bin/bash

# echo commands
set -x

# Check formatting
./format/check.sh
format_ret=$?

# Run build
/opt/st/stm32cubeide_1.4.0/stm32cubeide --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data . -importAll . -build all -no-indexer
build_ret=$?

# Check code coverage
pushd example/custom/tests
make
make lcov
popd

# disable echo for summaries
set +x

# print summaries
echo format return $format_ret
echo build return $build_ret

status=$((format_ret || build_ret))
echo exit status $status

exit $status
