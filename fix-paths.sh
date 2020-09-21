#!/bin/bash

# The IDE insists on converting absolute paths to relative paths.
# This is dumb and breaks the build for any project that is located with deeper nesting.

# For lower nesting, it will successfully find the root path.
# This script converts the project to allow nesting under 20 levels (that limit can be boosted if necessary).

find . -name .project | xargs sed -i 's|PARENT-[[:digit:]]\+-PROJECT_LOC/usr/share|PARENT-20-PROJECT_LOC/usr/share|g'

