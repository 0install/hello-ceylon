#!/bin/sh -e
if [ "$SRCDIR" = "" ]; then
	echo "Don't run this script directly; use 0compile to set up the environment"
	exit 1
fi

# Compile
"$CEYLONC" -src "$SRCDIR/src" -out "$BUILDDIR" "$SRCDIR/src/helloworld.ceylon"

# Copy result to DISTDIR
cp "$BUILDDIR/unversioned/default_module-unversioned.car" "$DISTDIR/helloworld.car"
