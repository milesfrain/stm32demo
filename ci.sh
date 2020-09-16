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
unit_ret=$?
make lcov
lcov_ret=$?
popd

# disable echo for summaries
set +x

# print summaries
echo format return $format_ret
echo build return $build_ret
echo unit test return $unit_ret
echo coverage return $lcov_ret

status=$((format_ret || build_ret || unit_ret || lcov_ret))
echo exit status $status

exit $status
