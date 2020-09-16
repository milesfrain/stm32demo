#!/bin/bash

# The IDE insists on converting absolute paths to relative paths.
# This is dumb and breaks the build for any project that is located with deeper nesting.

find . -name .project | xargs sed -i 's|$%7BPARENT-[[:digit:]]\+-PROJECT_LOC%7D/usr/share|/usr/share|g'

